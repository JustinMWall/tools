"""Validate NHSL work records: RELAX NG, Schematron, and sanity checks.

Usage:  python validate.py 5527 [5653 ...]      (work numbers)
        python validate.py path/to/5527.xml

Needs: pip install lxml saxonche
Schemas are downloaded fresh each run into ./cache; if offline, the cached copies are used.
"""
import os
import re
import sys
import urllib.request

from lxml import etree
from saxonche import PySaxonProcessor

HERE = os.path.dirname(os.path.abspath(__file__))
CACHE = os.path.join(HERE, 'cache')
WORKS_DIR = r'C:\Users\justi\Documents\GitHub\syriaca-data\data\works\tei'
PIPELINE = os.path.join(HERE, 'schxslt', '2.0', 'pipeline-for-svrl.xsl')
URLS = {
    'works.rng': 'https://raw.githubusercontent.com/srophe/Gaddel/refs/heads/main/documentation/schemas/out/syriacaWorks.compiled.rng',
    'uniqueLangHW.sch': 'https://raw.githubusercontent.com/srophe/Gaddel/refs/heads/main/documentation/schemas/uniqueLangHW.sch',
    'editors.xml': 'https://raw.githubusercontent.com/srophe/gaddel/master/documentation/editors.xml',
}
SCH = 'http://purl.oclc.org/dsdl/schematron'
SVRL = '{http://purl.oclc.org/dsdl/svrl}'
TEI = {'t': 'http://www.tei-c.org/ns/1.0'}
XML_ID = '{http://www.w3.org/XML/1998/namespace}id'


def fetch_schemas():
    os.makedirs(CACHE, exist_ok=True)
    for name, url in URLS.items():
        path = os.path.join(CACHE, name)
        try:
            with urllib.request.urlopen(url, timeout=30) as r:
                data = r.read()
            open(path, 'wb').write(data)
        except OSError as e:
            if not os.path.exists(path):
                sys.exit(f'Cannot download {name} and no cached copy: {e}')
            print(f'(offline: using cached {name})')


def build_embedded_sch():
    """Pull the Schematron embedded in the compiled RNG into a standalone schema."""
    rng = etree.parse(os.path.join(CACHE, 'works.rng'))
    schema = etree.Element('{%s}schema' % SCH, nsmap={'sch': SCH})
    schema.set('queryBinding', 'xslt2')
    seen = set()
    for ns in rng.iter('{%s}ns' % SCH):
        key = (ns.get('prefix'), ns.get('uri'))
        if key not in seen:
            seen.add(key)
            schema.append(etree.fromstring(etree.tostring(ns)))
    for pat in rng.iter('{%s}pattern' % SCH):
        schema.append(etree.fromstring(etree.tostring(pat)))
    path = os.path.join(CACHE, 'embedded.sch')
    etree.ElementTree(schema).write(path, encoding='utf-8', xml_declaration=True)
    return path


def check_rng(record):
    rng = etree.RelaxNG(etree.parse(os.path.join(CACHE, 'works.rng')))
    ok = rng.validate(etree.parse(record))
    errors = [f'line {e.line}: {e.message}' for e in rng.error_log]
    return ok, errors


def check_schematron(xp, compiled, record):
    errors, fired = [], 0
    for name, xsl in compiled:
        svrl = etree.fromstring(xp.transform_to_string(source_file=record, stylesheet_file=xsl).encode('utf-8'))
        fired += len(svrl.findall(SVRL + 'fired-rule'))
        for i in svrl.findall(SVRL + 'failed-assert') + svrl.findall(SVRL + 'successful-report'):
            msg = ' '.join(''.join(i.itertext()).split())
            errors.append(f'{name}: {i.get("location")} -> {msg}')
    return fired, errors


def check_sanity(record):
    errors = []
    raw = open(record, 'rb').read()
    try:
        raw.decode('utf-8')
    except UnicodeDecodeError as e:
        errors.append(f'not UTF-8: {e}')
    t = etree.parse(record)
    ids = [e.get(XML_ID) for e in t.iter() if e.get(XML_ID)]
    dupes = sorted({i for i in ids if ids.count(i) > 1})
    if dupes:
        errors.append(f'duplicate xml:ids: {dupes}')
    refs = set()
    for e in t.iter():
        for a in ('source', 'active', 'passive'):
            v = e.get(a)
            if v:
                refs |= {x[1:] for x in v.split() if x.startswith('#')}
    dangling = sorted(refs - set(ids))
    if dangling:
        errors.append(f'references to missing xml:ids: {dangling}')
    fileno = re.match(r'(\d+)', os.path.basename(record))
    idno = t.find('.//t:publicationStmt/t:idno', TEI)
    if fileno and (idno is None or f'/work/{fileno.group(1)}/' not in idno.text):
        errors.append('publicationStmt/idno number does not match filename')
    editors = open(os.path.join(CACHE, 'editors.xml'), encoding='utf-8').read()
    for ref in sorted({m for m in re.findall(r'editors\.xml#([^"]*)"', raw.decode('utf-8', 'replace'))}):
        if f'xml:id="{ref}"' not in editors:
            errors.append(f'editor id not in editors.xml: "#{ref}"')
    return errors


def main(args):
    if not args:
        sys.exit(__doc__)
    records = [a if a.endswith('.xml') else os.path.join(WORKS_DIR, f'{a}.xml') for a in args]
    fetch_schemas()
    embedded = build_embedded_sch()
    failed = False
    with PySaxonProcessor(license=False) as proc:
        xp = proc.new_xslt30_processor()
        compiled = []
        for sch in (embedded, os.path.join(CACHE, 'uniqueLangHW.sch')):
            xsl = sch + '.xsl'
            open(xsl, 'w', encoding='utf-8').write(xp.transform_to_string(source_file=sch, stylesheet_file=PIPELINE))
            compiled.append((os.path.basename(sch), xsl))
        for rec in records:
            print(f'=== {rec}')
            ok, rng_err = check_rng(rec)
            print(f'RELAX NG:   {"valid" if ok else "INVALID"}')
            for e in rng_err:
                print('   ', e)
            fired, sch_err = check_schematron(xp, compiled, rec)
            print(f'Schematron: {fired} rules fired, {len(sch_err)} failures')
            for e in sch_err:
                print('   ', e)
            san = check_sanity(rec)
            print(f'Sanity:     {"ok" if not san else "PROBLEMS"}')
            for e in san:
                print('   ', e)
            failed |= (not ok) or bool(sch_err) or bool(san)
    print('\nRESULT:', 'FAILED' if failed else 'all checks passed')
    print('Reminder: the manuscript-label Schematron rules never fire (no tei: prefix in their context); check label text by hand.')
    sys.exit(1 if failed else 0)


if __name__ == '__main__':
    main(sys.argv[1:])
