<?xml version='1.0' encoding='UTF-8'?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2"><sch:ns xmlns="http://www.tei-c.org/ns/1.0" xmlns:rng="http://relaxng.org/ns/structure/1.0" xmlns:srophe="https://srophe.app" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:teix="http://www.tei-c.org/ns/Examples" xmlns:xlink="http://www.w3.org/1999/xlink" prefix="tei" uri="http://www.tei-c.org/ns/1.0"/><sch:ns xmlns="http://www.tei-c.org/ns/1.0" xmlns:rng="http://relaxng.org/ns/structure/1.0" xmlns:srophe="https://srophe.app" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:teix="http://www.tei-c.org/ns/Examples" xmlns:xlink="http://www.w3.org/1999/xlink" prefix="xs" uri="http://www.w3.org/2001/XMLSchema"/><sch:ns xmlns="http://www.tei-c.org/ns/1.0" xmlns:rng="http://relaxng.org/ns/structure/1.0" xmlns:srophe="https://srophe.app" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:teix="http://www.tei-c.org/ns/Examples" xmlns:xlink="http://www.w3.org/1999/xlink" prefix="rng" uri="http://relaxng.org/ns/structure/1.0"/><sch:ns xmlns="http://www.tei-c.org/ns/1.0" xmlns:rng="http://relaxng.org/ns/structure/1.0" xmlns:srophe="https://srophe.app" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:teix="http://www.tei-c.org/ns/Examples" xmlns:xlink="http://www.w3.org/1999/xlink" prefix="rna" uri="http://relaxng.org/ns/compatibility/annotations/1.0"/><sch:ns xmlns="http://www.tei-c.org/ns/1.0" xmlns:rng="http://relaxng.org/ns/structure/1.0" xmlns:srophe="https://srophe.app" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:teix="http://www.tei-c.org/ns/Examples" xmlns:xlink="http://www.w3.org/1999/xlink" prefix="sch" uri="http://purl.oclc.org/dsdl/schematron"/><sch:ns xmlns="http://www.tei-c.org/ns/1.0" xmlns:rng="http://relaxng.org/ns/structure/1.0" xmlns:srophe="https://srophe.app" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:teix="http://www.tei-c.org/ns/Examples" xmlns:xlink="http://www.w3.org/1999/xlink" prefix="sch1x" uri="http://www.ascc.net/xml/schematron"/><sch:pattern xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:teix="http://www.tei-c.org/ns/Examples" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:srophe="https://srophe.app" id="syriacaWorks-att.cmc-generatedBy-CMC_generatedBy_within_post-constraint-rule-1">
      <sch:rule xmlns:rng="http://relaxng.org/ns/structure/1.0" xmlns:xi="http://www.w3.org/2001/XInclude" context="tei:*[@generatedBy]">
         <sch:assert test="ancestor-or-self::tei:post">The @generatedBy attribute is for use within a &lt;post&gt; element.</sch:assert>
      </sch:rule>
   </sch:pattern><sch:pattern xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:teix="http://www.tei-c.org/ns/Examples" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:srophe="https://srophe.app" id="syriacaWorks-att.datable.w3c-att-datable-w3c-when-constraint-rule-2">
      <sch:rule xmlns:rng="http://relaxng.org/ns/structure/1.0" xmlns:xi="http://www.w3.org/2001/XInclude" context="tei:*[@when]">
         <sch:report test="@notBefore|@notAfter|@from|@to" role="nonfatal">The @when attribute cannot be used with any other att.datable.w3c attributes.</sch:report>
      </sch:rule>
   </sch:pattern><sch:pattern xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:teix="http://www.tei-c.org/ns/Examples" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:srophe="https://srophe.app" id="syriacaWorks-att.datable.w3c-att-datable-w3c-from-constraint-rule-3">
      <sch:rule xmlns:rng="http://relaxng.org/ns/structure/1.0" xmlns:xi="http://www.w3.org/2001/XInclude" context="tei:*[@from]">
         <sch:report test="@notBefore" role="nonfatal">The @from and @notBefore attributes cannot be used together.</sch:report>
      </sch:rule>
   </sch:pattern><sch:pattern xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:teix="http://www.tei-c.org/ns/Examples" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:srophe="https://srophe.app" id="syriacaWorks-att.datable.w3c-att-datable-w3c-to-constraint-rule-4">
      <sch:rule xmlns:rng="http://relaxng.org/ns/structure/1.0" xmlns:xi="http://www.w3.org/2001/XInclude" context="tei:*[@to]">
         <sch:report test="@notAfter" role="nonfatal">The @to and @notAfter attributes cannot be used together.</sch:report>
      </sch:rule>
   </sch:pattern><sch:pattern xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:teix="http://www.tei-c.org/ns/Examples" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:srophe="https://srophe.app" id="syriacaWorks-att.pointing-targetLang-constraint-rule-5">
      <sch:rule xmlns:rng="http://relaxng.org/ns/structure/1.0" xmlns:xi="http://www.w3.org/2001/XInclude" context="tei:*[not(self::tei:schemaSpec)][@targetLang]">
         <sch:assert test="@target">@targetLang should only be used on <sch:name/> if @target is specified.</sch:assert>
      </sch:rule>
   </sch:pattern><sch:pattern xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:teix="http://www.tei-c.org/ns/Examples" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:srophe="https://srophe.app" id="syriacaWorks-att.calendarSystem-calendar-calendar_attr_on_empty_element-constraint-rule-6">
      <sch:rule xmlns:rng="http://relaxng.org/ns/structure/1.0" xmlns:xi="http://www.w3.org/2001/XInclude" context="tei:*[@calendar]">
         <sch:assert test="string-length( normalize-space(.) ) gt 0"> @calendar indicates one or more
              systems or calendars to which the date represented by the content of this element belongs,
              but this <sch:name/> element has no textual content.</sch:assert>
      </sch:rule>
   </sch:pattern><sch:pattern xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:teix="http://www.tei-c.org/ns/Examples" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:srophe="https://srophe.app" id="syriacaWorks-att.global.source-source-only_1_ODD_source-constraint-rule-9">
      <sch:rule xmlns:rng="http://relaxng.org/ns/structure/1.0" xmlns:xi="http://www.w3.org/2001/XInclude" context="tei:*[@source]">
         <sch:let name="srcs" value="tokenize( normalize-space(@source),' ')"/>
         <sch:report test="(   self::tei:classRef                                 | self::tei:dataRef                                 | self::tei:elementRef                                 | self::tei:macroRef                                 | self::tei:moduleRef                                 | self::tei:schemaSpec )                                   and                                   $srcs[2]">
              When used on a schema description element (like
              <sch:value-of select="name(.)"/>), the @source attribute
              should have only 1 value. (This one has <sch:value-of select="count($srcs)"/>.)
            </sch:report>
      </sch:rule>
   </sch:pattern><sch:pattern xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:teix="http://www.tei-c.org/ns/Examples" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:srophe="https://srophe.app" id="syriacaWorks-att.global.source-source-att-values-constraint-rule-7">
      <sch:rule context="//@source">
         <sch:let name="biblIDs" value="//tei:text//tei:bibl/@xml:id"/>
         <sch:let name="biblIDpointers" value="for $i in $biblIDs return concat('#', $i)"/>
         <sch:assert test="                   every $i in tokenize(., ' ')                   satisfies $i = $biblIDpointers">
                  This @source attribute can contain one or more of the following <sch:value-of select="$biblIDpointers"/>.
                </sch:assert>
      </sch:rule>
   </sch:pattern><sch:pattern xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:teix="http://www.tei-c.org/ns/Examples" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:srophe="https://srophe.app" id="syriacaWorks-att.global.source-only_1_ODD_source-constraint-rule-8">
      <sch:rule xmlns:rng="http://relaxng.org/ns/structure/1.0" xmlns:xi="http://www.w3.org/2001/XInclude" context="tei:*[@source]">
         <sch:let name="srcs" value="tokenize( normalize-space(@source),' ')"/>
         <sch:report test="(   self::tei:classRef                                 | self::tei:dataRef                                 | self::tei:elementRef                                 | self::tei:macroRef                                 | self::tei:moduleRef                                 | self::tei:schemaSpec )                                   and                                   $srcs[2]">
              When used on a schema description element (like
              <sch:value-of select="name(.)"/>), the @source attribute
              should have only 1 value. (This one has <sch:value-of select="count($srcs)"/>.)
            </sch:report>
      </sch:rule>
   </sch:pattern><sch:pattern xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:teix="http://www.tei-c.org/ns/Examples" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:srophe="https://srophe.app" id="syriacaWorks-att.typed-subtypeTyped-constraint-rule-10">
      <sch:rule xmlns:rng="http://relaxng.org/ns/structure/1.0" xmlns:xi="http://www.w3.org/2001/XInclude" context="tei:*[@subtype]">
         <sch:assert test="@type">The <sch:name/> element should not be categorized in detail with @subtype unless also categorized in general with @type</sch:assert>
      </sch:rule>
   </sch:pattern><sch:pattern xmlns:rng="http://relaxng.org/ns/structure/1.0" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:teix="http://www.tei-c.org/ns/Examples" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:srophe="https://srophe.app" id="syriacaWorks-p-lang-on-p-in-body-constraint-rule-11">
            <sch:rule context="//tei:text//tei:p">
               <sch:assert test="./@xml:lang">A &lt;p&gt; element in the text body must have an @xml:lang attribute.</sch:assert>
            </sch:rule>
         </sch:pattern><sch:pattern xmlns:rng="http://relaxng.org/ns/structure/1.0" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:teix="http://www.tei-c.org/ns/Examples" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:srophe="https://srophe.app" id="syriacaWorks-p-abstractModel-structure-p-in-ab-or-p-constraint-rule-12">
            <sch:rule context="tei:p">
               <sch:report test="(ancestor::tei:ab or ancestor::tei:p) and                        not( ancestor::tei:floatingText                           | parent::tei:exemplum                           | parent::tei:item                           | parent::tei:note                           | parent::tei:q                           | parent::tei:quote                           | parent::tei:remarks                           | parent::tei:said                           | parent::tei:sp                           | parent::tei:stage                           | parent::tei:cell                           | parent::tei:figure )">
          Abstract model violation: Paragraphs may not occur inside other paragraphs or ab elements.
        </sch:report>
            </sch:rule>
         </sch:pattern><sch:pattern xmlns:rng="http://relaxng.org/ns/structure/1.0" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:teix="http://www.tei-c.org/ns/Examples" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:srophe="https://srophe.app" id="syriacaWorks-p-abstractModel-structure-p-in-l-constraint-rule-13">
            <sch:rule context="tei:l//tei:p">
               <sch:assert test="ancestor::tei:floatingText | parent::tei:figure | parent::tei:note">
          Abstract model violation: Metrical lines may not contain higher-level structural elements such as div, p, or ab, unless p is a child of figure or note, or is a descendant of floatingText.
        </sch:assert>
            </sch:rule>
         </sch:pattern><sch:pattern xmlns:rng="http://relaxng.org/ns/structure/1.0" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:teix="http://www.tei-c.org/ns/Examples" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:srophe="https://srophe.app" id="syriacaWorks-quote-source-only_1_ODD_source-constraint-rule-14">
            <sch:rule xmlns:xi="http://www.w3.org/2001/XInclude" context="tei:*[@source]">
               <sch:let name="srcs" value="tokenize( normalize-space(@source),' ')"/>
               <sch:report test="(   self::tei:classRef                                 | self::tei:dataRef                                 | self::tei:elementRef                                 | self::tei:macroRef                                 | self::tei:moduleRef                                 | self::tei:schemaSpec )                                   and                                   $srcs[2]">
              When used on a schema description element (like
              <sch:value-of select="name(.)"/>), the @source attribute
              should have only 1 value. (This one has <sch:value-of select="count($srcs)"/>.)
            </sch:report>
            </sch:rule>
         </sch:pattern><sch:pattern xmlns:rng="http://relaxng.org/ns/structure/1.0" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:teix="http://www.tei-c.org/ns/Examples" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:srophe="https://srophe.app" id="syriacaWorks-desc-noteGrp-desc-values-constraint-rule-15">
            <sch:rule context="tei:noteGrp[@type='abstract']/tei:desc">
               <sch:assert test=". = 'Abstract'">Text node must be "Abstract".</sch:assert>
            </sch:rule>
            <sch:rule context="tei:noteGrp[@type='contents']/tei:desc">
               <sch:assert test=". = 'Contents'">Text node must be "Contents".</sch:assert>
            </sch:rule>
            <sch:rule context="tei:noteGrp[@type='disambiguation']/tei:desc">
               <sch:assert test=". = 'Disambiguation'">Text node must be
                    "Disambiguation".</sch:assert>
            </sch:rule>
            <sch:rule context="tei:noteGrp[@type='excerpts']/tei:desc">
               <sch:assert test=". = 'Excerpts'">Text node must be "Excerpt".</sch:assert>
            </sch:rule>
            <sch:rule context="tei:noteGrp[@type='explicit']/tei:desc">
               <sch:assert test=". = 'Explicit'">Text node must be "Explicit".</sch:assert>
            </sch:rule>
            <sch:rule context="tei:noteGrp[@type='incipit']/tei:desc">
               <sch:assert test=". = 'Incipit'">Text node must be "Incipit".</sch:assert>
            </sch:rule>
            <sch:rule context="tei:noteGrp[@type='prologue']/tei:desc">
               <sch:assert test=". = 'Prologue'">Text node must be "Prologue".</sch:assert>
            </sch:rule>
            <sch:rule context="tei:noteGrp[@type='scope']/tei:desc">
               <sch:assert test=". = 'Scope'">Text node must be "Scope".</sch:assert>
            </sch:rule>
            <sch:rule context="tei:noteGrp[@type='versions']/tei:desc">
               <sch:assert test=". = 'Ancient Versions'">Text node must be
                    "Versions".</sch:assert>
            </sch:rule>
         </sch:pattern><sch:pattern xmlns:rng="http://relaxng.org/ns/structure/1.0" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:teix="http://www.tei-c.org/ns/Examples" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:srophe="https://srophe.app" id="syriacaWorks-desc-lang-on-desc-constraint-rule-24">
            <sch:rule context="//tei:body//tei:desc">
               <sch:assert test="./@xml:lang">
                  All &lt;desc&gt; elements must have an @xml:lang attribute.
                </sch:assert>
            </sch:rule>
         </sch:pattern><sch:pattern xmlns:rng="http://relaxng.org/ns/structure/1.0" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:teix="http://www.tei-c.org/ns/Examples" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:srophe="https://srophe.app" id="syriacaWorks-desc-unique-desc-abstracts-constraint-rule-25">
            <sch:rule context="tei:desc[@type='abstract']">
               <sch:let name="series" value="ancestor::tei:TEI//tei:seriesStmt/tei:idno[@type='URI']"/>
               <sch:let name="abstractLangPairs" value="for $i in parent::element()/tei:desc[@type='abstract']/tokenize(@corresp, ' ') return concat($i, '-', @xml:lang)"/>
               <sch:assert test="every $i in tokenize(@corresp, ' ') satisfies $i = $series">
                  Values allowed on @corresp: <sch:value-of select="string-join($series, ';  ')"/>.
                </sch:assert>
               <sch:assert test="count($abstractLangPairs) eq count(distinct-values($abstractLangPairs))">
                  A series (see individual values of @corresp) may have only one abstract per language (see @xml:lang).
                </sch:assert>
            </sch:rule>
         </sch:pattern><sch:pattern xmlns:rng="http://relaxng.org/ns/structure/1.0" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:teix="http://www.tei-c.org/ns/Examples" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:srophe="https://srophe.app" id="syriacaWorks-desc-abstract-on-each-series-constraint-rule-26">
            <sch:rule context="tei:desc[@type='abstract'][@xml:lang='en']">
               <sch:let name="series" value="ancestor::tei:TEI//tei:seriesStmt/tei:idno[@type='URI']"/>
               <sch:let name="corresps" value="parent::*/tei:desc[@xml:lang='en']/@corresp/tokenize(., '\s')"/>
               <sch:assert test="every $i in $series satisfies $i = $corresps">
                  Each abstract must be associated with a series. As such, each of the following 
                  must appear once as a value on the @corresp attribute of an abstract: 
                  <sch:value-of select="string-join($series, ';  ')"/>.
                </sch:assert>
            </sch:rule>
         </sch:pattern><sch:pattern xmlns:rng="http://relaxng.org/ns/structure/1.0" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:teix="http://www.tei-c.org/ns/Examples" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:srophe="https://srophe.app" id="syriacaWorks-desc-documentation-on-desc-constraint-rule-27">
            <sch:rule context="tei:event/tei:desc">
               <sch:report test="@resp or @source">Documentation using @resp or @source should go on the parent &lt;event&gt; element.</sch:report>
            </sch:rule>
            <sch:rule context="tei:state/tei:desc">
               <sch:report test="@resp or @source">Documentation using @resp or @source should go on the parent &lt;state&gt; element.</sch:report>
            </sch:rule>
         </sch:pattern><sch:pattern xmlns:rng="http://relaxng.org/ns/structure/1.0" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:teix="http://www.tei-c.org/ns/Examples" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:srophe="https://srophe.app" id="syriacaWorks-desc-deprecationInfo-only-in-deprecated-constraint-rule-29">
            <sch:rule context="tei:desc[ @type eq 'deprecationInfo']">
               <sch:assert test="../@validUntil">Information about a
        deprecation should only be present in a specification element
        that is being deprecated: that is, only an element that has a
        @validUntil attribute should have a child &lt;desc
        type="deprecationInfo"&gt;.</sch:assert>
            </sch:rule>
         </sch:pattern><sch:pattern xmlns:rng="http://relaxng.org/ns/structure/1.0" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:teix="http://www.tei-c.org/ns/Examples" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:srophe="https://srophe.app" id="syriacaWorks-name-name-ref-values-constraint-rule-30">
            <sch:rule context="//tei:teiHeader//tei:name/@ref">
               <sch:let name="edsDoc" value="doc('https://raw.githubusercontent.com/srophe/gaddel/master/documentation/editors.xml')"/>
               <sch:let name="eds" value="$edsDoc//tei:body//@xml:id"/>
               <sch:let name="refValues" value="for $i in $eds return concat('http://syriaca.org/documentation/editors.xml#', $i)"/>
               <sch:assert test="every $i in . satisfies $i = $refValues">
                  Acceptable values for the @ref attribute on a &lt;name&gt; element inside the &lt;teiHeader&gt; include: 
                  <sch:value-of select="string-join($refValues, ' | ')"/>.
                </sch:assert>
            </sch:rule>
         </sch:pattern><sch:pattern xmlns:rng="http://relaxng.org/ns/structure/1.0" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:teix="http://www.tei-c.org/ns/Examples" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:srophe="https://srophe.app" id="syriacaWorks-name-ref-on-name-constraint-rule-31">
            <sch:rule context="//tei:teiHeader//tei:name">
               <sch:assert test="./@ref">A @ref attribute is required on the &lt;name&gt; element
                  inside &lt;teiHeader&gt;.</sch:assert>
            </sch:rule>
         </sch:pattern><sch:pattern xmlns:rng="http://relaxng.org/ns/structure/1.0" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:teix="http://www.tei-c.org/ns/Examples" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:srophe="https://srophe.app" id="syriacaWorks-date-date-in-context-constraint-rule-32">
            <sch:rule context="tei:body/child::tei:bibl/child::tei:date">
               <sch:assert test="@source or @resp"> The &lt;date&gt; element for the main work
                    &lt;bibl&gt; must have either a @source attribute or a @resp attribute.
                  </sch:assert>
            </sch:rule>
         </sch:pattern><sch:pattern xmlns:rng="http://relaxng.org/ns/structure/1.0" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:teix="http://www.tei-c.org/ns/Examples" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:srophe="https://srophe.app" id="syriacaWorks-ptr-target-in-ptr-constraint-rule-33">
            <sch:rule context="//tei:body[not(child::tei:bibl)]//tei:bibl/tei:ptr/@target" role="warning">
               <sch:let name="error" value="."/>
               <sch:assert test="matches(., 'http://syriaca.org/cbss/[A-Z\d]{8}')">
                  The @target value: "<sch:value-of select="$error"/>" is not a Syriaca.org cbss URI. These URIs take the form of 
                  "http://syriaca.org/cbss/[A-Z\d]{8}" where [A-Z\d]{8} indicates an 8-character alpha-numeric string. In circumstances 
                  where the &lt;ptr&gt; element indicates an external web address (i.e. http://pleiades.stoa.org/places/922698), 
                  the @target should indicate the correct URL for that resource and this warning message should be ignored.
                </sch:assert>
            </sch:rule>
         </sch:pattern><sch:pattern xmlns:rng="http://relaxng.org/ns/structure/1.0" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:teix="http://www.tei-c.org/ns/Examples" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:srophe="https://srophe.app" id="syriacaWorks-ptr-ptrAtts-constraint-rule-34">
            <sch:rule context="tei:ptr">
               <sch:report test="@target and @cRef">Only one of the attributes @target and @cRef may be supplied on <sch:name/>.</sch:report>
            </sch:rule>
         </sch:pattern><sch:pattern xmlns:rng="http://relaxng.org/ns/structure/1.0" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:teix="http://www.tei-c.org/ns/Examples" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:srophe="https://srophe.app" id="syriacaWorks-ref-refAtts-constraint-rule-35">
            <sch:rule context="tei:ref">
               <sch:report test="@target and @cRef">Only one of the attributes @target and @cRef may be supplied on <sch:name/>.</sch:report>
            </sch:rule>
         </sch:pattern><sch:pattern xmlns:rng="http://relaxng.org/ns/structure/1.0" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:teix="http://www.tei-c.org/ns/Examples" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:srophe="https://srophe.app" id="syriacaWorks-label-ptr-with-label-constraint-rule-36">
            <sch:rule context="tei:label[not(ancestor::tei:relation)]">
               <sch:report test="tei:ptr">
                    A &lt;ptr&gt; child of &lt;label&gt; should only be used
                    when &lt;label&gt; is the descendant of &lt;relation&gt;.
                  </sch:report>
            </sch:rule>
         </sch:pattern><sch:pattern xmlns:rng="http://relaxng.org/ns/structure/1.0" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:teix="http://www.tei-c.org/ns/Examples" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:srophe="https://srophe.app" id="syriacaWorks-label-label-values-constraint-rule-37">
            <sch:rule context="tei:listBibl[@type='manuscripts']/bibl/label[idno/@subtype='BAV']">
               <sch:assert test="starts-with(., 'Vatican Apostolic Library')">
                    This text should begin "The Vatican Apostolic Library". 
                  </sch:assert>
            </sch:rule>
            <sch:rule context="tei:listBibl[@type='manuscripts']/bibl/label[idno/@subtype='BL']">
               <sch:assert test="starts-with(., 'London, British Library')">
                    This text should begin "London, British Library". 
                  </sch:assert>
            </sch:rule>
            <sch:rule context="tei:listBibl[@type='manuscripts']/bibl/label[idno/@subtype='BML']">
               <sch:assert test="starts-with(., 'Florence, The Laurentian Library')">
                    This text should begin "Florence, The Laurentian Library". 
                  </sch:assert>
            </sch:rule>
            <sch:rule context="tei:listBibl[@type='manuscripts']/bibl/label[idno/@subtype='BNF']">
               <sch:assert test="starts-with(., 'Paris, Bibliothèque nationale')">
                    This text should begin "Paris, Bibliothèque nationale". 
                  </sch:assert>
            </sch:rule>
            <sch:rule context="tei:listBibl[@type='manuscripts']/bibl/label[idno/@subtype='Berlin']">
               <sch:assert test="starts-with(., 'Berlin, Staatsbibliothek zu Berlin')">
                    This text should begin "Berlin, Staatsbibliothek zu Berlin". 
                  </sch:assert>
            </sch:rule>
            <sch:rule context="tei:listBibl[@type='manuscripts']/bibl/label[idno/@subtype='Cambridge']">
               <sch:assert test="starts-with(., 'Cambridge, University Library')">
                    This text should begin "Cambridge, University Library". 
                  </sch:assert>
            </sch:rule>
            <sch:rule context="tei:listBibl[@type='manuscripts']/bibl/label[idno/@subtype='Crawford']">
               <sch:assert test="starts-with(., 'Manchester, The University of Manchester, Crawford Collection')">
                    This text should begin "Manchester, The University of Manchester, Crawford Collection". 
                  </sch:assert>
            </sch:rule>
            <sch:rule context="tei:listBibl[@type='manuscripts']/bibl/label[idno/@subtype='Haddad-Issac']">
               <sch:assert test="starts-with(., 'P. Haddad and J. Isaac')">
                    This text should begin "P. Haddad and J. Isaac". 
                  </sch:assert>
            </sch:rule>
            <sch:rule context="tei:listBibl[@type='manuscripts']/bibl/label[idno/@subtype='Harris']">
               <sch:assert test="starts-with(., 'J. Rendell Harris Number')">
                    This text should begin "J. Rendell Harris Number". 
                  </sch:assert>
            </sch:rule>
            <sch:rule context="tei:listBibl[@type='manuscripts']/bibl/label[idno/@subtype='HMML']">
               <sch:assert test="starts-with(., 'Hill Museum and Manuscript Library')">
                    This text should begin "Hill Museum and Manuscript Library". 
                  </sch:assert>
            </sch:rule>
            <sch:rule context="tei:listBibl[@type='manuscripts']/bibl/label[idno/@subtype='Leiden']">
               <sch:assert test="starts-with(., 'Peshitta Institute Leiden Manuscript Siglum')">
                    This text should begin "Peshitta Institute Leiden Manuscript Siglum". 
                  </sch:assert>
            </sch:rule>
            <sch:rule context="tei:listBibl[@type='manuscripts']/bibl/label[idno/@subtype='Mingana']">
               <sch:assert test="starts-with(., 'Birmingham, Selly Oak College Library, Mingana Collection')">
                    This text should begin "Birmingham, Selly Oak College Library, Mingana Collection". 
                  </sch:assert>
            </sch:rule>
            <sch:rule context="tei:listBibl[@type='manuscripts']/bibl/label[idno/@subtype='Rosen']">
               <sch:assert test="starts-with(., 'Rosen and Forshall')">
                    This text should begin "Rosen and Forshall". 
                  </sch:assert>
            </sch:rule>
            <sch:rule context="tei:listBibl[@type='manuscripts']/bibl/label[idno/@subtype='SOAH']">
               <sch:assert test="starts-with(., 'Homs, Syriac Orthodox Church, Archdiocese of Homs')">
                    This text should begin "Homs, Syriac Orthodox Church, Archdiocese of Homs". 
                  </sch:assert>
            </sch:rule>
            <sch:rule context="tei:listBibl[@type='manuscripts']/bibl/label[idno/@subtype='Sachau']">
               <sch:assert test="starts-with(., 'Sachau')">
                    This text should begin "Sachau". 
                  </sch:assert>
            </sch:rule>
            <sch:rule context="tei:listBibl[@type='manuscripts']/bibl/label[idno/@subtype='Sinai']">
               <sch:assert test="starts-with(., &quot;Sinai, St. Catherine's Monastery&quot;)">
                    This text should begin "Sinai, St. Catherine's Monastery". 
                  </sch:assert>
            </sch:rule>
            <sch:rule context="tei:listBibl[@type='manuscripts']/bibl/label[idno/@subtype='Yale']">
               <sch:assert test="starts-with(., 'Yale University, Beinecke Library')">
                    This text should begin "Yale University, Beinecke Library". 
                  </sch:assert>
            </sch:rule>
         </sch:pattern><sch:pattern xmlns:rng="http://relaxng.org/ns/structure/1.0" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:teix="http://www.tei-c.org/ns/Examples" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:srophe="https://srophe.app" id="syriacaWorks-head-listBibl-head-values-constraint-rule-54">
            <sch:rule context="tei:listBibl[@type='editions']/tei:head">
               <sch:assert test=". = 'Editions'">Text node must be "Editions".</sch:assert>
            </sch:rule>
            <sch:rule context="tei:listBibl[@type='manuscripts']/tei:head">
               <sch:assert test=". = 'Manuscripts'">Text node must be "Manuscripts".</sch:assert>
            </sch:rule>
            <sch:rule context="tei:listBibl[@type='modernTranslations']/tei:head">
               <sch:assert test=". = 'Modern Translations'">Text node must be "Modern Translations".</sch:assert>
            </sch:rule>
            <sch:rule context="tei:listBibl[@type='ancientVersions']/tei:head">
               <sch:assert test=". = 'Ancient Versions'">Text node must be "Ancient Version".</sch:assert>
            </sch:rule>
            <sch:rule context="tei:listBibl[@type='secondaryLiterature']/tei:head">
               <sch:assert test=". = 'Secondary Literature'">Text node must be "Secondary Literature".</sch:assert>
            </sch:rule>
         </sch:pattern><sch:pattern xmlns:rng="http://relaxng.org/ns/structure/1.0" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:teix="http://www.tei-c.org/ns/Examples" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:srophe="https://srophe.app" id="syriacaWorks-note-noteGrp-note-type-constraint-rule-59">
            <sch:rule context="tei:body//tei:noteGrp[@type='abstract']/tei:note">
               <sch:assert test="@type='abstract'"> This &lt;note&gt; must contain a @type
                    attribute with value "abstract". </sch:assert>
            </sch:rule>
            <sch:rule context="tei:body//tei:noteGrp[@type='content']/tei:note">
               <sch:assert test="@type='content'"> This &lt;note&gt; must contain a @type
                    attribute with value "content". </sch:assert>
            </sch:rule>
            <sch:rule context="tei:body//tei:noteGrp[@type='disambiguation']/tei:note">
               <sch:assert test="@type='disambiguation'"> This &lt;note&gt; must contain a @type
                    attribute with value "disambiguation". </sch:assert>
            </sch:rule>
            <sch:rule context="tei:body//tei:noteGrp[@type='exerpts']/tei:note">
               <sch:assert test="@type='exerpt'"> This &lt;note&gt; must contain a @type
                    attribute with value "exerpt". </sch:assert>
            </sch:rule>
            <sch:rule context="tei:body//tei:noteGrp[@type='explicit']/tei:note">
               <sch:assert test="@type='explicit'"> This &lt;note&gt; must contain a @type
                    attribute with value "explicit". </sch:assert>
            </sch:rule>
            <sch:rule context="tei:body//tei:noteGrp[@type='incipit']/tei:note">
               <sch:assert test="@type='incipit'"> This &lt;note&gt; must contain a @type
                    attribute with value "incipit". </sch:assert>
            </sch:rule>
            <sch:rule context="tei:body//tei:noteGrp[@type='prologue']/tei:note">
               <sch:assert test="@type='prologue'"> This &lt;note&gt; must contain a @type
                    attribute with value "prologue". </sch:assert>
            </sch:rule>
            <sch:rule context="tei:body//tei:noteGrp[@type='scope']/tei:note">
               <sch:assert test="@type='scope'"> This &lt;note&gt; must contain a @type attribute
                    with value "scope". </sch:assert>
            </sch:rule>
            <sch:rule context="tei:body//tei:noteGrp[@type='versions']/tei:note">
               <sch:assert test="@type='version'"> This &lt;note&gt; must contain a @type
                    attribute with value "version". </sch:assert>
            </sch:rule>
         </sch:pattern><sch:pattern xmlns:rng="http://relaxng.org/ns/structure/1.0" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:teix="http://www.tei-c.org/ns/Examples" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:srophe="https://srophe.app" id="syriacaWorks-note-quotes-in-notes-constraint-rule-68">
            <sch:rule context="                   tei:body//tei:note[@type=('excerpt','explicit','incipit','prologue')]">
               <sch:assert test="tei:quote and count(*) = count(tei:quote)"> When &lt;note&gt;
                    has type excerpt, explicit, incipit, or prologue, it must contain only
                    &lt;quote&gt; elements. </sch:assert>
            </sch:rule>
         </sch:pattern><sch:pattern xmlns:rng="http://relaxng.org/ns/structure/1.0" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:teix="http://www.tei-c.org/ns/Examples" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:srophe="https://srophe.app" id="syriacaWorks-note-listBibl-note-type-constraint-rule-69">
            <sch:rule context="tei:bibl/tei:listBibl//tei:note">
               <sch:report test="@type"> This &lt;note&gt; element does not take a @type
                    attribute. </sch:report>
            </sch:rule>
         </sch:pattern><sch:pattern xmlns:rng="http://relaxng.org/ns/structure/1.0" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:teix="http://www.tei-c.org/ns/Examples" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:srophe="https://srophe.app" id="syriacaWorks-note-documentation-on-note-constraint-rule-70">
            <sch:rule context="tei:text//tei:note">
               <sch:report test="@resp and @source">Only one of the attributes @resp and @source may be supplied.</sch:report>
            </sch:rule>
         </sch:pattern><sch:pattern xmlns:rng="http://relaxng.org/ns/structure/1.0" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:teix="http://www.tei-c.org/ns/Examples" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:srophe="https://srophe.app" id="syriacaWorks-note-documentation-note-child-quote-constraint-rule-71">
            <sch:rule context="tei:text//tei:note[not(tei:quote)]">
               <sch:assert test="@resp or @source">One of the attributes @resp or @source must be supplied.</sch:assert>
            </sch:rule>
         </sch:pattern><sch:pattern xmlns:rng="http://relaxng.org/ns/structure/1.0" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:teix="http://www.tei-c.org/ns/Examples" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:srophe="https://srophe.app" id="syriacaWorks-note-unique-note-abstracts-constraint-rule-72">
            <sch:rule context="tei:note[@type='abstract']">
               <sch:let name="series" value="ancestor::tei:TEI//tei:seriesStmt/tei:idno[@type='URI']"/>
               <sch:let name="abstractLangPairs" value="for $i in parent::element()/tei:note[@type='abstract']/tokenize(@corresp, ' ') return concat($i, '-', @xml:lang)"/>
               <sch:assert test="every $i in tokenize(@corresp, ' ') satisfies $i = $series">
                  Values allowed on @corresp: <sch:value-of select="string-join($series, ';  ')"/>.
                </sch:assert>
               <sch:assert test="count($abstractLangPairs) eq count(distinct-values($abstractLangPairs))">
                  A series (see individual values of @corresp) may have only one abstract per language (see @xml:lang).
                </sch:assert>
            </sch:rule>
         </sch:pattern><sch:pattern xmlns:rng="http://relaxng.org/ns/structure/1.0" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:teix="http://www.tei-c.org/ns/Examples" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:srophe="https://srophe.app" id="syriacaWorks-note-note-abstract-on-each-series-constraint-rule-73">
            <sch:rule context="tei:note[@type='abstract'][@xml:lang='en']">
               <sch:let name="series" value="ancestor::tei:TEI//tei:seriesStmt/tei:idno[@type='URI']"/>
               <sch:let name="corresps" value="parent::*/tei:note[@xml:lang='en']/@corresp/tokenize(., '\s')"/>
               <sch:assert test="every $i in $series satisfies $i = $corresps">
                  Each series in the header must have an abstract. As such, each of the following must appear once as a value on the @corresp attribute of an abstract: <sch:value-of select="string-join($series, ';  ')"/>.
                </sch:assert>
            </sch:rule>
         </sch:pattern><sch:pattern xmlns:rng="http://relaxng.org/ns/structure/1.0" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:teix="http://www.tei-c.org/ns/Examples" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:srophe="https://srophe.app" id="syriacaWorks-note-xmlLang-in-note-constraint-rule-74">
            <sch:rule context="//tei:body//tei:note">
               <sch:assert test="./@xml:lang"> All &lt;note&gt; elements in the &lt;body&gt; must
                  have an @xml:lang attribute. </sch:assert>
            </sch:rule>
         </sch:pattern><sch:pattern xmlns:rng="http://relaxng.org/ns/structure/1.0" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:teix="http://www.tei-c.org/ns/Examples" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:srophe="https://srophe.app" id="syriacaWorks-author-ana-on-author-constraint-rule-75">
            <sch:rule context="tei:body/child::tei:bibl/child::tei:author/@ana">
               <sch:assert test=". = 'attributed' or . = 'disputed' or . = 'pseudo'">
                    In this context, the acceptable @ana attributes are "attributed",
                    "disputed", or "pseudo".
                  </sch:assert>
            </sch:rule>
         </sch:pattern><sch:pattern xmlns:rng="http://relaxng.org/ns/structure/1.0" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:teix="http://www.tei-c.org/ns/Examples" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:srophe="https://srophe.app" id="syriacaWorks-author-author-in-context-constraint-rule-76">
            <sch:rule context="tei:body/child::tei:bibl/child::tei:author">
               <sch:report test="tei:persName"> This &lt;author&gt; element allows only a text
                    node with an English name or a &lt;foreign&gt; element with a non-English name.
                  </sch:report>
               <sch:assert test="@xml:lang">
                    This &lt;author&gt; element requires an @xml:lang attribute.
                  </sch:assert>
               <sch:assert test="@source or @resp"> The &lt;author&gt; element for the main work
                    &lt;bibl&gt; must have either a @source attribute or a @resp attribute.
                  </sch:assert>
               <sch:assert test="matches(@ref, concat('http://syriaca.org/person/', '\d+'))" role="error"> This &lt;author&gt; element must take a @ref attribute with a
                    Syriaca.org person URI which reqires the form 'http://syriaca.org/person/{\d+}'
                    (where {\d+} is a number). </sch:assert>
            </sch:rule>
         </sch:pattern><sch:pattern xmlns:rng="http://relaxng.org/ns/structure/1.0" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:teix="http://www.tei-c.org/ns/Examples" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:srophe="https://srophe.app" id="syriacaWorks-editor-ana-on-editor-constraint-rule-77">
            <sch:rule context="tei:body/child::tei:bibl/child::tei:editor/@ana">
               <sch:assert test=". = 'attributed' or . = 'disputed' or . = 'pseudo'">
                    In this context, the acceptable @ana attribute values are "attributed",
                    "disputed", or "pseudo".
                  </sch:assert>
            </sch:rule>
         </sch:pattern><sch:pattern xmlns:rng="http://relaxng.org/ns/structure/1.0" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:teix="http://www.tei-c.org/ns/Examples" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:srophe="https://srophe.app" id="syriacaWorks-editor-editor-in-context-constraint-rule-78">
            <sch:rule context="tei:body/child::tei:bibl/child::tei:editor">
               <sch:report test="tei:persName">
                    This &lt;author&gt; element allows only a text node with an English name 
                    or a &lt;foreign&gt; element with a non-English name.
                  </sch:report>
               <sch:assert test="@xml:lang">
                    This &lt;editor&gt; element requires an @xml:lang attribute.
                  </sch:assert>
               <sch:assert test="@source or @resp"> The &lt;editor&gt; element for the main work
                    &lt;bibl&gt; must have either a @source attribute or a @resp attribute.
                  </sch:assert>
               <sch:assert test="matches(@ref, concat('http://syriaca.org/person/', '\d+'))">
                    This &lt;editor&gt; element must take a @ref attribute 
                    with a Syriaca.org person URI which reqires 
                    the form 'http://syriaca.org/person/{\d+}' (where {\d+} is a number).
                  </sch:assert>
            </sch:rule>
            <sch:rule context="tei:body/child::tei:bibl/child::tei:editor/@role">
               <sch:assert test=". = 'scribe' or . = 'translator'">
                    The only @role values allowed on this &lt;editor&gt; element are "scribe" or "translator".
                  </sch:assert>
            </sch:rule>
         </sch:pattern><sch:pattern xmlns:rng="http://relaxng.org/ns/structure/1.0" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:teix="http://www.tei-c.org/ns/Examples" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:srophe="https://srophe.app" id="syriacaWorks-editor-role-on-editor-constraint-rule-80">
            <sch:rule context="//tei:teiHeader//tei:editor">
               <sch:assert test="./@role">A @role attribute is required on the &lt;editor&gt;
                  element inside &lt;teiHeader&gt;.</sch:assert>
            </sch:rule>
            <sch:rule context="//tei:teiHeader//tei:titleStmt//tei:editor/@role">
               <sch:assert test=". = 'creator' or . = 'code-author' or . = 'content-author' or . = 'contributor'"> The acceptable attribute values for @role on the &lt;editor&gt; element inside
                  the &lt;titleStmt&gt; are: creator, code-author, content-author, or contributor.
                </sch:assert>
            </sch:rule>
            <sch:rule context="//tei:teiHeader//tei:seriesStmt//tei:editor/@role">
               <sch:assert test=". = 'associate' or . = 'general' or . = 'technical' or . = 'past-associate' or . = 'past-general' or . = 'past-technical'"> The acceptable attribute values for @role on the &lt;editor&gt; element inside
                  the &lt;seriesStmt&gt; are: associate, general, technical, past-associate,
                  past-general, or past-technical. </sch:assert>
            </sch:rule>
            <sch:rule context="//tei:body//tei:editor/@role">
               <sch:assert test=". = 'editor' or . = 'general' or . = 'scribe' or . = 'translator'"> The acceptable
                  attribute values for @role on the &lt;editor&gt; element inside the &lt;body&gt;
                  are: editor, general, scribe, or translator. </sch:assert>
            </sch:rule>
         </sch:pattern><sch:pattern xmlns:rng="http://relaxng.org/ns/structure/1.0" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:teix="http://www.tei-c.org/ns/Examples" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:srophe="https://srophe.app" id="syriacaWorks-editor-date-past-editor-constraint-rule-84">
            <sch:rule context="//tei:teiHeader//tei:seriesStmt//tei:editor[contains(@role, 'past')]">
               <sch:assert test="tei:date">An &lt;editor&gt; element with a "past" @role attribute must contain a &lt;date&gt; element.</sch:assert>
            </sch:rule>
         </sch:pattern><sch:pattern xmlns:rng="http://relaxng.org/ns/structure/1.0" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:teix="http://www.tei-c.org/ns/Examples" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:srophe="https://srophe.app" id="syriacaWorks-editor-ref-on-editor-constraint-rule-85">
            <sch:rule context="//tei:teiHeader//tei:editor">
               <sch:assert test="./@ref">A @ref attribute is required on the &lt;editor&gt; element
                  inside &lt;teiHeader&gt;.</sch:assert>
            </sch:rule>
            <sch:rule context="//tei:teiHeader//tei:editor/@ref">
               <sch:let name="edsDoc" value="doc('https://raw.githubusercontent.com/srophe/gaddel/master/documentation/editors.xml')"/>
               <sch:let name="eds" value="$edsDoc//tei:text/tei:body/tei:listPerson/tei:person/@xml:id"/>
               <sch:let name="refValues" value="for $i in $eds return concat('http://syriaca.org/documentation/editors.xml#', $i)"/>
               <sch:assert test="every $i in . satisfies $i = $refValues"> Acceptable values for the @ref attribute on an &lt;editor&gt; element inside the
                  &lt;teiHeader&gt; include: <sch:value-of select="string-join($refValues, ' | ')"/>. </sch:assert>
            </sch:rule>
         </sch:pattern><sch:pattern xmlns:rng="http://relaxng.org/ns/structure/1.0" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:teix="http://www.tei-c.org/ns/Examples" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:srophe="https://srophe.app" id="syriacaWorks-editor-source-only_1_ODD_source-constraint-rule-87">
            <sch:rule xmlns:xi="http://www.w3.org/2001/XInclude" context="tei:*[@source]">
               <sch:let name="srcs" value="tokenize( normalize-space(@source),' ')"/>
               <sch:report test="(   self::tei:classRef                                 | self::tei:dataRef                                 | self::tei:elementRef                                 | self::tei:macroRef                                 | self::tei:moduleRef                                 | self::tei:schemaSpec )                                   and                                   $srcs[2]">
              When used on a schema description element (like
              <sch:value-of select="name(.)"/>), the @source attribute
              should have only 1 value. (This one has <sch:value-of select="count($srcs)"/>.)
            </sch:report>
            </sch:rule>
         </sch:pattern><sch:pattern xmlns:rng="http://relaxng.org/ns/structure/1.0" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:teix="http://www.tei-c.org/ns/Examples" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:srophe="https://srophe.app" id="syriacaWorks-title-xmlLang-on-title-constraint-rule-88">
            <sch:rule context="tei:body/child::tei:bibl/child::tei:title">
               <sch:assert test="@xml:lang"> This &lt;title&gt; must have an @xml:lang attribute. </sch:assert>
               <sch:assert test="@source or @resp"> The &lt;title&gt; element for the main work
                    &lt;bibl&gt; must have either a @source attribute or a @resp attribute.
                  </sch:assert>
            </sch:rule>
         </sch:pattern><sch:pattern xmlns:rng="http://relaxng.org/ns/structure/1.0" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:teix="http://www.tei-c.org/ns/Examples" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:srophe="https://srophe.app" id="syriacaWorks-title-lang-on-title-in-body-constraint-rule-89">
            <sch:rule context="//tei:text//tei:bibl/tei:title">
               <sch:assert test="./@xml:lang or ./contains(., 'http://') or ./contains(., 'https://')">A &lt;title&gt; element in a &lt;bibl&gt; 
                  element within the text body must have an @xml:lang attribute unless the content of the text node is a URL 
                  (i.e. contains "http://" or "https://").
                </sch:assert>
            </sch:rule>
         </sch:pattern><sch:pattern xmlns:rng="http://relaxng.org/ns/structure/1.0" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:teix="http://www.tei-c.org/ns/Examples" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:srophe="https://srophe.app" id="syriacaWorks-title-title-in-titleStmt-constraint-rule-90">
            <sch:rule context="//tei:titleStmt/tei:title">
               <sch:assert test="matches(@level, 'a')">A &lt;title&gt; element of @level="a" is the only title allowed in
                  the &lt;titleStmt&gt;.</sch:assert>
            </sch:rule>
         </sch:pattern><sch:pattern xmlns:rng="http://relaxng.org/ns/structure/1.0" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:teix="http://www.tei-c.org/ns/Examples" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:srophe="https://srophe.app" id="syriacaWorks-title-title-in-seriesStmt-constraint-rule-91">
            <sch:rule context="//tei:seriesStmt//tei:title">
               <sch:assert test="matches(@level, 'm') or matches(@level, 's')">Only &lt;title&gt; elements of @level="m" or "s"
                  are allowed in the &lt;seriesStmt&gt;.
                </sch:assert>
            </sch:rule>
         </sch:pattern><sch:pattern xmlns:rng="http://relaxng.org/ns/structure/1.0" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:teix="http://www.tei-c.org/ns/Examples" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:srophe="https://srophe.app" id="syriacaWorks-title-title-in-desc-note-constraint-rule-92">
            <sch:rule context="//tei:text//tei:desc//tei:title/@ref | //tei:text//tei:note//tei:title/@ref">
               <sch:assert test="                   matches(., '^http://syriaca\.org/work/\d+$')                   or                   matches(., '^http://syriaca\.org/cbss/[0-9A-Z]+$')                   ">
                  This @ref attribute must take either a Syriaca.org work URI or a Comprehensive Bibliography 
                  of Syriac Studies URI. For a work URI, the form is "http://syriaca.org/work/{\d+$} where {\d+$} 
                  is a number. For a bibliography URI, the form is "http://syriaca.org/cbss/{0-9A-Z} where {0-9A-Z} 
                  is a string made up of numbers and capital letters. In both cases these @ref values should point to
                  URIs for specific work or bibliography items.
                </sch:assert>
            </sch:rule>
            <sch:rule context="//tei:text//tei:desc//tei:title | //tei:text//tei:note//tei:title">
               <sch:report test="tei:ptr">
                  A &lt;ptr&gt; element is not allowed as child of &lt;title&gt;. Instead use a @target attribute.
                </sch:report>
            </sch:rule>
         </sch:pattern><sch:pattern xmlns:rng="http://relaxng.org/ns/structure/1.0" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:teix="http://www.tei-c.org/ns/Examples" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:srophe="https://srophe.app" id="syriacaWorks-bibl-bibl-in-context-constraint-rule-94">
            <sch:rule context="tei:body//tei:listBibl[@type='manuscripts']/tei:bibl">
               <sch:assert test="tei:label">
                     A
                    manuscript &lt;bibl&gt; element must have a child &lt;label&gt; element. </sch:assert>
               <sch:assert test="@type='syriaca:Manuscript'"> This &lt;bibl&gt; element requires
                    a @type attribute with the value "syriaca:Manuscript". </sch:assert>
               <sch:report test="@ana"> The @ana attribute is not allowed here. </sch:report>
            </sch:rule>
            <sch:rule context="tei:body//tei:listBibl[@type='ancientVersions']/tei:bibl">
               <sch:assert test="tei:label or tei:ptr"> An ancient versions &lt;bibl&gt; element
                    must have eith a child &lt;label&gt; element or a child &lt;ptr&lt; element. </sch:assert>
               <sch:assert test="@type='syriaca:AncientVersion'"> This &lt;bibl&gt; element
                    requires a @type attribute with the value "syriaca:AncientVersion". </sch:assert>
               <sch:report test="@ana"> The @ana attribute is not allowed here. </sch:report>
            </sch:rule>
            <sch:rule context="tei:body//tei:listBibl[@type='editions']/tei:bibl">
               <sch:assert test="@type='lawd:Edition'"> This &lt;bibl&gt; element requires a
                    @type attribute with the value "lawd:Edition". </sch:assert>
               <sch:assert test="tei:ptr"> An edition &lt;bibl&gt; element must have a child
                    &lt;ptr&gt; element. </sch:assert>
            </sch:rule>
            <sch:rule context="tei:body//tei:listBibl[@type='modernTranslations']/tei:bibl">
               <sch:assert test="@type='syriaca:ModernTranslation'"> This &lt;bibl&gt; element
                    requires a @type attribute with the value "syriaca:ModernTranslation". </sch:assert>
               <sch:assert test="tei:ptr or tei:label"> A modern translation &lt;bibl&gt; element
                    must have either a child &lt;ptr&gt; element or a child &lt;label&gt; element.
                    The &lt;label&gt; element should only be used in the rare instance where the
                    modern translation is contained in a manuscript. </sch:assert>
            </sch:rule>
            <sch:rule context="tei:body//tei:listBibl[@type='secondaryLiterature']/tei:bibl">
               <sch:assert test="@type='lawd:Citation'"> This &lt;bibl&gt; element requires a
                    @type attribute with the value "lawd:Citation". </sch:assert>
               <sch:assert test="tei:ptr"> A secondary literature &lt;bibl&gt; element must have
                    a child &lt;ptr&gt; element. </sch:assert>
            </sch:rule>
            <sch:rule context="tei:body/child::tei:bibl">
               <sch:assert test="tei:title and tei:idno and tei:listBibl"> Every work-level
                    &lt;bibl&gt; element must have as child elements at least &lt;title&gt;,
                    &lt;idno&gt;, and &lt;listBibl&gt;. </sch:assert>
               <sch:report test="tei:label">  &lt;label&gt; not allowed here.  The work &lt;bibl&gt; does not take a child
                    &lt;label&gt; element. </sch:report>
               <sch:report test="tei:ptr"> &lt;ptr&gt; not allowed here. </sch:report>
               <sch:report test="tei:citedRange"> &lt;citedRange&gt; not allowed here. </sch:report>
               <sch:report test="tei:biblScope"> &lt;biblScope&gt; not allowed here. </sch:report>
               <sch:report test="tei:note"> &lt;note&gt; not allowed here. Notes under a work &lt;bibl&gt; must be encoded in a
                    &lt;noteGrp&gt; element. </sch:report>
               <sch:assert test="@xml:id"> The main work &lt;bibl&gt; must have an @xml:id.
                  </sch:assert>
            </sch:rule>
            <sch:rule context="tei:body/child::tei:bibl/@xml:id">
               <sch:let name="docURIno" value="replace(//tei:publicationStmt/tei:idno[@type='URI'][not(@type='deprecated')]/text(), '.+?(\d+).+', '$1')"/>
               <sch:let name="id" value="@xml:id"/>
               <sch:assert test="matches(., concat('work-', $docURIno))"> The required @xml:id
                    must be 'work-<sch:value-of select="$docURIno"/>. </sch:assert>
            </sch:rule>
            <sch:rule context="tei:body//tei:listBibl//tei:bibl">
               <sch:let name="docURIno" value="replace(//tei:publicationStmt/tei:idno[@type='URI'][not(@type='deprecated')]/text(), '.+?(\d+).+', '$1')"/>
               <sch:let name="id" value="@xml:id"/>
               <sch:assert test="matches(./@xml:id, concat('bib', $docURIno, '-', '\d+$'))"> The
                    required @xml:id must be 'bib<sch:value-of select="$docURIno"/>-{\d+}' (where
                    {\d+} is a number). </sch:assert>
               <sch:report test="preceding-sibling::element()[@xml:id = $id]">This @xml:id is
                    already in use.</sch:report>
               <sch:report test="tei:noteGrp"> Notes encoded inside a &lt;listBibl&gt; cannot
                    appear inside a &lt;noteGrp&gt; element. </sch:report>
               <sch:report test="tei:listBibl"> Bibliography encoded inside a &lt;listBibl&gt;
                    cannot appear inside a &lt;listBibl&gt; element. </sch:report>
               <sch:report test="tei:idno"> In this context, a &lt;idno&gt; element must appear
                    as the child of a &lt;label&gt; element. </sch:report>
            </sch:rule>
         </sch:pattern><sch:pattern xmlns:rng="http://relaxng.org/ns/structure/1.0" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:teix="http://www.tei-c.org/ns/Examples" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:srophe="https://srophe.app" id="syriacaWorks-bibl-work-bhse-constraint-rule-102">
            <sch:rule context="tei:body/child::tei:bibl[contains(@ana, '#syriaca-hagiographic')]">
               <sch:assert test="//tei:seriesStmt/tei:title = 'Bibliotheca Hagiographica Syriaca Electronica'"> This work record must include a &lt;seriesStmt&gt; indicating that it is part
                    of the volume "Bibliotheca Hagiographica Syriaca Electronica". </sch:assert>
               <sch:assert test="//tei:seriesStmt/tei:title = 'Gateway to the Syriac Saints'">
                    This work record must include a &lt;seriesStmt&gt; indicating that it is part of
                    the series "Gateway to the Syriac Saints". </sch:assert>
            </sch:rule>
            <sch:rule context="tei:TEI[//tei:seriesStmt/tei:title = 'Gateway to the Syriac Saints']//tei:body/child::tei:bibl">
               <sch:assert test="contains(@ana, '#syriaca-hagiographic')"> A work &lt;bibl&gt;
                    that is part of the series "Gateway to the Syriac Saints" must have an @ana
                    attribute with the value "#syriaca-hagiographic". </sch:assert>
            </sch:rule>
            <sch:rule context="tei:TEI[//tei:seriesStmt/tei:title = 'Bibliotheca Hagiographica Syriaca Electronica']//tei:body/child::tei:bibl">
               <sch:assert test="contains(@ana, '#syriaca-hagiographic')"> A work &lt;bibl&gt;
                    that is part of the series "Bibliotheca Hagiographica Syriaca Electronica" must
                    have an @ana attribute with the value "#syriaca-hagiographic". </sch:assert>
            </sch:rule>
         </sch:pattern><sch:pattern xmlns:rng="http://relaxng.org/ns/structure/1.0" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:teix="http://www.tei-c.org/ns/Examples" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:srophe="https://srophe.app" id="syriacaWorks-bibl-work-bible-constraint-rule-105">
            <sch:rule context="tei:body/child::tei:bibl[contains(@ana, '#syriaca-biblical')]">
               <sch:assert test="//tei:seriesStmt/tei:title = 'A Guide to the Bible in Syriac'">
                    This work record must include a &lt;seriesStmt&gt; indicating that it is part of
                    the volume "A Guide to the Bible in Syriac". </sch:assert>
            </sch:rule>
            <sch:rule context="tei:TEI[//tei:seriesStmt/tei:title = 'A Guide to the Bible in Syriac']//tei:body/child::tei:bibl">
               <sch:assert test="contains(@ana, '#syriaca-biblical')"> A work &lt;bibl&gt; that
                    is part of the series "A Guide to the Bible in Syriac" must have an @ana
                    attribute with the value "#syriaca-biblical". </sch:assert>
            </sch:rule>
         </sch:pattern><sch:pattern xmlns:rng="http://relaxng.org/ns/structure/1.0" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:teix="http://www.tei-c.org/ns/Examples" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:srophe="https://srophe.app" id="syriacaWorks-bibl-work-science-constraint-rule-107">
            <sch:rule context="tei:body/child::tei:bibl[contains(@ana, '#syriaca-scientific')]">
               <sch:assert test="//tei:seriesStmt/tei:title = 'Syriac Scientific and Philosophical Literature'"> This work record must include a &lt;seriesStmt&gt; indicating that it is part
                    of the volume "Syriac Scientific and Philosophical Literature". </sch:assert>
            </sch:rule>
            <sch:rule context="tei:TEI[//tei:seriesStmt/tei:title = 'Syriac Scientific and Philosophical Literature']//tei:body/child::tei:bibl">
               <sch:assert test="contains(@ana, '#syriaca-scientific')"> A work &lt;bibl&gt; that
                    is part of the series "Syriac Scientific and Philosophical Literature" must have
                    an @ana attribute with the value "#syriaca-scientific". </sch:assert>
            </sch:rule>
         </sch:pattern><sch:pattern xmlns:rng="http://relaxng.org/ns/structure/1.0" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:teix="http://www.tei-c.org/ns/Examples" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:srophe="https://srophe.app" id="syriacaWorks-bibl-bibl-child-bibl-constraint-rule-109">
            <sch:rule context="tei:bibl//tei:bibl">
               <sch:report test="tei:listBibl"> This &lt;bibl&gt; element cannot take a child
                    &lt;listBibl&gt;. </sch:report>
            </sch:rule>
         </sch:pattern><sch:pattern xmlns:rng="http://relaxng.org/ns/structure/1.0" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:teix="http://www.tei-c.org/ns/Examples" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:srophe="https://srophe.app" id="syriacaWorks-bibl-mssCitation-constraint-rule-110">
            <sch:rule context="//tei:text//tei:desc//tei:bibl | //tei:text//tei:note//tei:bibl">
               <sch:assert test="@type='MS'">
                  Must be @type='MS'. If not a mss, use &lt;title&gt;.
                </sch:assert>
               <sch:assert test="tei:ptr/@target">
                  This &lt;bibl&gt; must have a &lt;ptr&gt; element with @target attribute.
                </sch:assert>
            </sch:rule>
            <sch:rule context="//tei:text//tei:desc//tei:bibl/tei:ptr/@target | //tei:text//tei:note//tei:bibl/tei:ptr/@target">
               <sch:assert test="matches(., concat('http://syriaca.org/manuscript/', '\d+$'))">
                  This @target attribute must point to a Syriaca.org manuscript URI taking the form "http://syriaca.org/manuscript/{\d+$}} where {\d+$} is a number.
                </sch:assert>
            </sch:rule>
         </sch:pattern><sch:pattern xmlns:rng="http://relaxng.org/ns/structure/1.0" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:teix="http://www.tei-c.org/ns/Examples" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:srophe="https://srophe.app" id="syriacaWorks-bibl-titleWithExternalURL-constraint-rule-112">
            <sch:rule context="//tei:text//tei:bibl[tei:ptr/@target[not(contains(., 'syriaca.org'))]]">
               <sch:assert test="tei:title/text() = tei:ptr/@target">This &lt;bibl&gt; must have a child &lt;title&gt; element that equals the value of the @target attribute on the sibling &lt;ptr&gt; element.</sch:assert>
            </sch:rule>
         </sch:pattern><sch:pattern xmlns:rng="http://relaxng.org/ns/structure/1.0" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:teix="http://www.tei-c.org/ns/Examples" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:srophe="https://srophe.app" id="syriacaWorks-listBibl-listBibl-in-body-constraint-rule-113">
            <sch:rule context="tei:body//tei:listBibl">
               <sch:assert test="tei:head"> This &lt;listBibl&gt; requires a &lt;head&gt;.
                  </sch:assert>
            </sch:rule>
            <sch:rule context="tei:body//tei:listBibl">
               <sch:assert test="tei:desc"> This &lt;listBibl&gt; requires a &lt;desc&gt;.
                  </sch:assert>
            </sch:rule>
            <sch:rule context="tei:body//tei:listBibl">
               <sch:assert test="@type"> This &lt;listBibl&gt; requires a @type attribute.
                  </sch:assert>
            </sch:rule>
         </sch:pattern><sch:pattern xmlns:rng="http://relaxng.org/ns/structure/1.0" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:teix="http://www.tei-c.org/ns/Examples" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:srophe="https://srophe.app" id="syriacaWorks-authority-authorityText-constraint-rule-116">
            <sch:rule context="//tei:publicationStmt/tei:authority">
               <sch:assert test="matches(., 'Syriaca.org: The Syriac Reference Portal')">
                  The &lt;authority&gt; element should contain the text: "Syriaca.org: The Syriac Reference Portal."
                </sch:assert>
            </sch:rule>
         </sch:pattern><sch:pattern xmlns:rng="http://relaxng.org/ns/structure/1.0" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:teix="http://www.tei-c.org/ns/Examples" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:srophe="https://srophe.app" id="syriacaWorks-idno-idno-subtypes-constraint-rule-117">
            <sch:rule context="tei:body/child::tei:bibl/child::tei:idno[@type='number']/@subtype">
               <sch:assert test=". = ('Bekker', 'BHO', 'BHS', 'CPG', 'Fichtner', 'Kühn', 'Takahashi')">
                    The only acceptable values for @subtype on a work &lt;idno&gt; with @type="number" are 
                    "Bekker", "BHO", "BHS", "CPG", "Fichtner", "Kühn", and "Takahashi". 
                  </sch:assert>
            </sch:rule>
            <sch:rule context="tei:listBibl[@type='manuscripts']/tei:bibl/tei:label/tei:idno/@subtype" role="warning">
               <sch:assert test=". = ('BAV', 'BL', 'BML', 'BNF', 'Berlin', 'Cambridge', 'Crawford', 'Haddad-Isaac', 'Harris', 'HMML', 'Leiden', 'Mingana', 'Rosen', 'SOAH', 'Sachau', 'Sinai', 'Yale')">
                    In the context of manuscripts, this @subtype value may only be 
                    "BAV" (for the Vatican Apostolic Library), "BML" (for The Laurentian Library), 
                    "Berlin", "Cambridge", "Crawford", "Haddad-Isaac", "Harris", "HMML", 
                    "Leiden", "Mingana", "Rosen", "SOAH", "Sachau", or "Yale". 
                    If none of these options is correct, please write in an appropriate
                    value and the warning message will prompt editors to ensure that it is the correct value.
                  </sch:assert>
            </sch:rule>
         </sch:pattern><sch:pattern xmlns:rng="http://relaxng.org/ns/structure/1.0" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:teix="http://www.tei-c.org/ns/Examples" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:srophe="https://srophe.app" id="syriacaWorks-idno-idno-uri-constraint-rule-119">
            <sch:rule context="//tei:publicationStmt/tei:idno[@type='URI']/text()">
               <sch:let name="fileNo" value="replace(document-uri(/), '.*?(\d{1,5}).xml', '$1')"/>
               <sch:let name="docURIno" value="replace(., '.+?(\d+).+', '$1')"/>
               <sch:let name="id" value="@xml:id"/>
               <sch:assert test="$fileNo = $docURIno">
                  The number portion of the &lt;idno&gt; element must be the same as the URI number in the file name: <sch:value-of select="$fileNo"/>
               </sch:assert>
               <sch:report test="preceding-sibling::element()[@xml:id = $id]">This @xml:id is already in use.</sch:report>
            </sch:rule>
         </sch:pattern><sch:pattern xmlns:rng="http://relaxng.org/ns/structure/1.0" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:teix="http://www.tei-c.org/ns/Examples" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:srophe="https://srophe.app" id="syriacaWorks-idno-change-on-idno-constraint-rule-120">
            <sch:rule context="//tei:idno[@type='deprecated']">
               <sch:assert test="@change">
                  An &lt;idno&gt; element with a @type attribute of "deprecation" must have a @change attribute.
                </sch:assert>
            </sch:rule>
            <sch:rule context="//tei:idno[not(@type='deprecated')]">
               <sch:report test="@change">
                  Only an &lt;idno&gt; element with a @type attribute of "deprecation" may have a @change attribute.
                </sch:report>
            </sch:rule>
         </sch:pattern><sch:pattern xmlns:rng="http://relaxng.org/ns/structure/1.0" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:teix="http://www.tei-c.org/ns/Examples" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:srophe="https://srophe.app" id="syriacaWorks-seriesStmt-seriesStmt-series-constraint-rule-122">
            <sch:rule context="//tei:seriesStmt//tei:title[@level='s']">
               <sch:assert test="                     ./node() = 'A New Handbook of Syriac Literature' or                      ./node() = 'Gateway to the Syriac Saints'"> This &lt;title&gt;
                    element must be "A New Handbook of Syriac Literature" or "Gateway to the Syriac
                    Saints". </sch:assert>
            </sch:rule>
            <sch:rule context="//tei:seriesStmt[tei:title = 'A New Handbook of Syriac Literature']/tei:idno">
               <sch:assert test="matches(., 'http://syriaca.org/nhsl')"> This &lt;idno&gt;
                    element must contain "http://syriaca.org/nhsl". </sch:assert>
            </sch:rule>
            <sch:rule context="//tei:seriesStmt[tei:title = 'Gateway to the Syriac Saints']/tei:idno">
               <sch:assert test="matches(., 'http://syriaca.org/saints')"> This &lt;idno&gt;
                    element must contain "http://syriaca.org/saints". </sch:assert>
            </sch:rule>
         </sch:pattern><sch:pattern xmlns:rng="http://relaxng.org/ns/structure/1.0" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:teix="http://www.tei-c.org/ns/Examples" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:srophe="https://srophe.app" id="syriacaWorks-seriesStmt-seriesStmt-monograph-constraint-rule-125">
            <sch:rule context="//tei:seriesStmt//tei:title[@level='m']">
               <sch:assert test="                     ./node() = 'Bibliotheca Hagiographica Syriaca Electronica' or                     ./node() = 'A Guide to the Bible in Syriac' or                     ./node() = 'Syriac Scientific and Philosophical Literature'">
                    This &lt;title&gt; element must be "Bibliotheca Hagiographica Syriaca
                    Electronica" or "Guide to the Bible in Syriac" or "Syriac Scientific and
                    Philosophical Literature". </sch:assert>
            </sch:rule>
            <sch:rule context="//tei:seriesStmt[tei:title = 'Bibliotheca Hagiographica Syriaca Electronica']/tei:idno">
               <sch:assert test="matches(., 'http://syriaca.org/bhse')"> This &lt;idno&gt;
                    element must contain "http://syriaca.org/bhse". </sch:assert>
            </sch:rule>
            <sch:rule context="//tei:seriesStmt[tei:title='Bibliotheca Hagiographica Syriaca Electronica']">
               <sch:assert test="tei:biblScope/@n = '1'"> Requires a &lt;biblScope&gt; element
                    with @n="1" since "Bibliotheca Hagiographica Syriaca Electronica" is volume 1 of
                    "A New Handbook of Syriac Literature". </sch:assert>
            </sch:rule>
            <sch:rule context="//tei:seriesStmt[tei:title = 'A Guide to the Bible in Syriac']/tei:idno">
               <sch:assert test="matches(., 'http://syriaca.org/bible')"> This &lt;idno&gt;
                    element must contain "http://syriaca.org/bible". </sch:assert>
            </sch:rule>
            <sch:rule context="//tei:seriesStmt[tei:title='A Guide to the Bible in Syriac']">
               <sch:assert test="tei:biblScope/@n = '2'"> Requires a &lt;biblScope&gt; element
                    with @n="2" since "A Guide to the Bible in Syriac" is volume 2 of "A New
                    Handbook of Syriac Literature". </sch:assert>
            </sch:rule>
         </sch:pattern><sch:pattern xmlns:rng="http://relaxng.org/ns/structure/1.0" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:teix="http://www.tei-c.org/ns/Examples" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:srophe="https://srophe.app" id="syriacaWorks-change-who-on-change-constraint-rule-130">
            <sch:rule context="//tei:revisionDesc//tei:change/@who">
               <sch:let name="edsDoc" value="doc('https://raw.githubusercontent.com/srophe/gaddel/master/documentation/editors.xml')"/>
               <sch:let name="eds" value="$edsDoc//tei:text/tei:body/tei:listPerson/tei:person/@xml:id"/>
               <sch:let name="refValues" value="for $i in $eds return concat('http://syriaca.org/documentation/editors.xml#', $i)"/>
               <sch:assert test="every $i in tokenize(., ' ') satisfies $i = $refValues">
                  Acceptable values for the @who attribute on a &lt;change&gt; element inside the &lt;revisionDesc&gt; include: 
                  <sch:value-of select="string-join($refValues, ' | ')"/>.
                </sch:assert>
            </sch:rule>
         </sch:pattern><sch:pattern xmlns:rng="http://relaxng.org/ns/structure/1.0" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:teix="http://www.tei-c.org/ns/Examples" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:srophe="https://srophe.app" id="syriacaWorks-change-xmlID-on-change-constraint-rule-131">
            <sch:rule context="//tei:change/@xml:id">
               <sch:let name="docURIno" value="replace(//tei:publicationStmt/tei:idno[@type='URI'][not(@type='deprecated')]/text(), '.+?(\d+).+', '$1')"/>
               <sch:assert test="matches(., concat('change', $docURIno, '-', '\d+$'))">
                  The required @xml:id must be 'change<sch:value-of select="$docURIno"/>-{\d+$}' (where {\d+$} is a number).
                </sch:assert>
               <sch:report test="preceding-sibling::element()[@xml:id = .]">This @xml:id is already in use.</sch:report>
            </sch:rule>
         </sch:pattern><sch:pattern xmlns:rng="http://relaxng.org/ns/structure/1.0" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:teix="http://www.tei-c.org/ns/Examples" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:srophe="https://srophe.app" id="syriacaWorks-persName-ref-on-persName-constraint-rule-132">
            <sch:rule context="tei:persName[not(parent::tei:author)]">
               <sch:assert test="matches(@ref, concat('http://syriaca.org/person/', '\d+'))" role="error"> This &lt;persName&gt; element must take a @ref attribute with a
                    Syriaca.org person URI which reqires the form 'http://syriaca.org/person/{\d+}'
                    (where {\d+} is a number). </sch:assert>
            </sch:rule>
         </sch:pattern><sch:pattern xmlns:rng="http://relaxng.org/ns/structure/1.0" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:teix="http://www.tei-c.org/ns/Examples" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:srophe="https://srophe.app" id="syriacaWorks-persName-persName-ref-constraint-rule-133">
            <sch:rule context="//tei:persName/@ref">
               <sch:assert test="matches(., concat('http://syriaca.org/person/', '\d+'))" role="error">
                  The @ref attribute on &lt;persName&gt; must take a Syriaca.org person URI which reqires 
                  the form 'http://syriaca.org/person/{\d+}' (where {\d+} is a number).
                </sch:assert>
            </sch:rule>
            <sch:rule context="//tei:persName[ancestor::tei:desc][ancestor::tei:note]">
               <sch:assert test="@ref">This &lt;persName&gt; requires a @ref attribute.</sch:assert>
            </sch:rule>
         </sch:pattern><sch:pattern xmlns:rng="http://relaxng.org/ns/structure/1.0" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:teix="http://www.tei-c.org/ns/Examples" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:srophe="https://srophe.app" id="syriacaWorks-placeName-place-ref-constraint-rule-135">
            <sch:rule context="//tei:placeName/@ref">
               <sch:assert test="matches(., concat('http://syriaca.org/place/', '\d+'))" role="error">
                  The @ref attribute on &lt;placeName&gt; must take a Syriaca.org place URI which reqires 
                  the form 'http://syriaca.org/place/{\d+}' (where {\d+} is a number).
                </sch:assert>
            </sch:rule>
            <sch:rule context="//tei:placeName[ancestor::tei:desc][ancestor::tei:note]">
               <sch:assert test="@ref">This &lt;placeName&gt; requires a @ref attribute.</sch:assert>
            </sch:rule>
         </sch:pattern><sch:pattern xmlns:rng="http://relaxng.org/ns/structure/1.0" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:teix="http://www.tei-c.org/ns/Examples" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:srophe="https://srophe.app" id="syriacaWorks-relation-passive-values-constraint-rule-137">
            <sch:rule context="tei:body//tei:relation/@passive">
               <sch:let name="IDValues" value="root(.)//tei:body//tei:bibl/@xml:id"/>
               <sch:let name="IDPtrValues" value="for $i in $IDValues return concat('#', $i)"/>
               <sch:report test="matches(., '\s')">
                    The @passive attribute may only take one value.
                  </sch:report>
               <sch:assert test="starts-with(., '#') or starts-with(., 'http')">
                    The @passive attribute must either point to an existing @xml:id in this
                    document starting with "#" or point to a URI/URL outside of this document 
                    starting with "http".
                  </sch:assert>
               <sch:assert test="                     not(starts-with(., '#'))                     or substring(.,2) =                     root(.)//tei:body//tei:bibl/@xml:id                     ">
                    This @passive attribute must point to a single @xml:id on a &lt;bibl&gt; element. Available values 
                    include: <sch:value-of select="string-join($IDPtrValues, '; ')"/>.
                  </sch:assert>
            </sch:rule>
         </sch:pattern><sch:pattern xmlns:rng="http://relaxng.org/ns/structure/1.0" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:teix="http://www.tei-c.org/ns/Examples" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:srophe="https://srophe.app" id="syriacaWorks-relation-active-values-constraint-rule-138">
            <sch:rule context="tei:body//tei:relation/@active">
               <sch:let name="IDValues" value="root(.)//tei:body//tei:bibl/@xml:id"/>
               <sch:let name="IDPtrValues" value="for $i in $IDValues return concat('#', $i)"/>
               <sch:report test="matches(., '\s')">
                    The @active attribute may only take one value.
                  </sch:report>
               <sch:assert test="starts-with(., '#') or starts-with(., 'http')">
                    The @active attribute must either point to an existing @xml:id in this
                    document starting with "#" or point to a URI/URL outside of this document 
                    starting with "http".
                  </sch:assert>
               <sch:assert test="                     not(starts-with(., '#'))                     or substring(.,2) =                     root(.)//tei:body//tei:bibl/@xml:id                     ">
                    This @active attribute must point to a single @xml:id on a &lt;bibl&gt; element. Available values 
                    include: <sch:value-of select="string-join($IDPtrValues, '; ')"/>.
                  </sch:assert>
            </sch:rule>
         </sch:pattern><sch:pattern xmlns:rng="http://relaxng.org/ns/structure/1.0" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:teix="http://www.tei-c.org/ns/Examples" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:srophe="https://srophe.app" id="syriacaWorks-relation-ref-values-in-context-constraint-rule-139">
            <sch:rule context="tei:body/child::tei:bibl/child::tei:listRelation/tei:relation/@ref">
               <sch:report test="matches(., 'dcterms:source')">
                    "dcterms:source" not allowed here.
                  </sch:report>
            </sch:rule>
            <sch:rule context="tei:body/child::tei:bibl//tei:bibl//tei:listRelation/tei:relation/@ref">
               <sch:assert test="matches(., 'dcterms:source')">
                    The only value allowed here is "dcterms:source". 
                  </sch:assert>
            </sch:rule>
         </sch:pattern><sch:pattern xmlns:rng="http://relaxng.org/ns/structure/1.0" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:teix="http://www.tei-c.org/ns/Examples" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:srophe="https://srophe.app" id="syriacaWorks-relation-ref-or-key-or-name-constraint-rule-141">
            <sch:rule xmlns:xi="http://www.w3.org/2001/XInclude" context="tei:relation">
               <sch:assert test="@ref or @key or @name">One of the attributes @name, @ref or @key must be supplied</sch:assert>
            </sch:rule>
         </sch:pattern><sch:pattern xmlns:rng="http://relaxng.org/ns/structure/1.0" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:teix="http://www.tei-c.org/ns/Examples" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:srophe="https://srophe.app" id="syriacaWorks-relation-active-mutual-constraint-rule-142">
            <sch:rule xmlns:xi="http://www.w3.org/2001/XInclude" context="tei:relation">
               <sch:report test="@active and @mutual">Only one of the attributes @active and @mutual may be supplied</sch:report>
            </sch:rule>
         </sch:pattern><sch:pattern xmlns:rng="http://relaxng.org/ns/structure/1.0" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:teix="http://www.tei-c.org/ns/Examples" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:srophe="https://srophe.app" id="syriacaWorks-relation-active-passive-constraint-rule-143">
            <sch:rule xmlns:xi="http://www.w3.org/2001/XInclude" context="tei:relation">
               <sch:report test="@passive and not(@active)">the attribute @passive may be supplied only if the attribute @active is supplied</sch:report>
            </sch:rule>
         </sch:pattern><sch:pattern xmlns:rng="http://relaxng.org/ns/structure/1.0" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:teix="http://www.tei-c.org/ns/Examples" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:srophe="https://srophe.app" id="syriacaWorks-text-source-within-text-constraint-rule-144">
            <sch:rule context="//tei:text">
               <sch:assert test="count(.//@source) ge 1">At least one descendent element of &lt;text&gt; must have a @source attribute (@source attributes point to the @xml:id on a &lt;bibl&gt; or &lt;listBibl&gt;).</sch:assert>
            </sch:rule>
         </sch:pattern><sch:pattern xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:teix="http://www.tei-c.org/ns/Examples" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:srophe="https://srophe.app" id="syriacaWorks-att.global.change-change-att-values-constraint-rule-145">
      <sch:rule context="//@change">
         <sch:let name="changeIDs" value="//tei:teiHeader//tei:change/@xml:id"/>
         <sch:let name="changeIDpointers" value="for $i in $changeIDs return concat('#', $i)"/>
         <sch:assert test="                  every $i in tokenize(., ' ')                  satisfies $i = $changeIDpointers">
                  This @change attribute can contain one or more of the following <sch:value-of select="$changeIDpointers"/>.
                </sch:assert>
      </sch:rule>
   </sch:pattern></sch:schema>