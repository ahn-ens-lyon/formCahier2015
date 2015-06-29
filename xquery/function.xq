(:~
 : this function serialize persName
 : @param $named content to process
 : @return concatenate forename and surname
 :)
declare function local:getName($personnes as element()*) as xs:string* {
  for $personne in $personnes
  return $personne/*:forename || ' ' || $personne/*:surname
};
<html>
<head>
<title>Biblio</title>
<meta charset="utf-8"/>
</head>
<body>
<div>
  <h1>Références</h1>
  <ul>{
    for $reference in //*:biblStruct
    return <li>{
      let $date := $reference//*:date/(@when | @from)
      return if (fn:empty($date)) then ()
      else  (<strong>[{fn:data($date)}]</strong>, ''), local:getName($reference//*:persName)}, <em>{fn:normalize-space($reference/*:monogr/*:title[1])}</em></li>
  }</ul>
</div>

<div>
  <h1>Auteurs</h1>
  {let $personnes := 
    for $personne in (//*:author/*:persName | //*:principal/*:persName)
    order by $personne/*:surname
    return local:getName($personne)
  return <ul>{
    for $personne in fn:distinct-values($personnes)
    return <li>{$personne}</li>
    }</ul>
  }
</div>

<div>
 <h1>Auteurs + nombre d´ouvrages</h1>
  {let $personnes := 
   for $personne in (//*:author/*:persName | //*:principal/*:persName)
    order by $personne/*:surname
    return local:getName($personne)
  return <ul>{
    for $personne in fn:distinct-values($personnes)
    return <li>{$personne} ({fn:count(//*:biblStruct[local:getName(.//*:persName) = $personne])})</li>
    }</ul>
  }
</div>


<div>
  <h1>Références par années</h1>
  <ul>{
    for $reference in //*:biblStruct
    let $date := $reference//*:imprint/*:date/(@when | @from)
    order by $date
    group by $date
    return
        <li><span>{$date}</span>
        <ul>
        {for $ref in //*:biblStruct[.//*:imprint/*:date/(@when | @from) = $date]
      return 
      <li><strong>[{fn:data($date)}]</strong>, {local:getName($ref//*:persName)}, <em>{fn:normalize-space($ref/*:monogr/*:title[1])}</em></li>}
        </ul>        
        </li>
  }</ul>
</div>

</body>
</html>