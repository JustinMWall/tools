# Record validation

Runs every check a work record needs before it counts as done:

1. **RELAX NG** against `syriacaWorks.compiled.rng` (lxml).
2. **Schematron**: the rules embedded in that RNG, plus `uniqueLangHW.sch`.
   They use XPath 2.0, so they are compiled with SchXslt and run with Saxon (saxonche).
3. **Sanity**: UTF-8, no duplicate `xml:id`s, every `#ref` resolves, `publicationStmt/idno`
   matches the filename, every `editors.xml#id` exists in the Syriaca editors list.

```
pip install lxml saxonche
python tools/validation/validate.py 5527            # a work number
python tools/validation/validate.py 5527 5653       # several
python tools/validation/validate.py path/to/x.xml   # any file
```

Schemas are downloaded fresh on each run into `cache/`, and the cached copies are used when offline.
The exit code is 0 only if every check passed.

## Known gap

The Schematron rules that check manuscript label text (`Paris, Bibliothèque nationale` for
`subtype="BNF"`, `Cambridge, University Library` for `Cambridge`, and so on) never fire. Their
`context` uses `bibl/label` without the `tei:` prefix, so it matches nothing. Check those labels by hand.

## Contents

- `validate.py`: the script.
- `schxslt/2.0/`: the XSLT 2.0 files from SchXslt 1.10.1 (David Maus, MIT licence),
  taken from `name.dmaus.schxslt:schxslt:1.10.1` on Maven Central.
- `cache/`: downloaded schemas and compiled Schematron (regenerated each run).
