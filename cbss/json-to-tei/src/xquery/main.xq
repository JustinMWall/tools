xquery version "3.1";

import module namespace zotero2tei="http://syriaca.org/zotero2tei";
import module namespace functx="http://www.functx.com";

declare default element namespace "http://www.tei-c.org/ns/1.0";
(: TODO: defaults for I/O vars? :)
(: declare variable $input-directory as xs:string external;
 :)
declare variable $input-file as xs:string external;

declare variable $output-directory as xs:string external;

declare variable $deprecated-directory as xs:string external;

declare variable $path-to-zotero-config as xs:string external;

declare variable $zotero-config := doc($path-to-zotero-config);

let $json := json-doc($input-file, map {"format": "xquery"})
let $newRecord := zotero2tei:build-new-record($json, $json?key, 'json', $zotero-config)

let $isDeprecated := functx:is-value-in-sequence("_deprecated", $json?data?tags?*?tag)

(:
TODO: include a variable for the redirects CSV and/or XML file (usually in syriaca-data), and if a record isDeprecated, make sure it gets an entry pointing to the redirect URIs found in the extra field. Don't add if it already has that entry of course
May require a new CLI flag to this file
Not sure if the XML or the CSV is the 'canonical' form of this data?
:)

let $fileName := $json?key||".xml"
let $savePath := if($isDeprecated)
  then $deprecated-directory||$fileName
  else $output-directory||$fileName

return (
  file:create-dir($output-directory),
  file:write($savePath, $newRecord)
)