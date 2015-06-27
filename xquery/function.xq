(:~
 : this function serialize persName
 : @param $named content to process
 : @return concatenate forename and surname
 :)
declare function local:getName($named as element()*){
  for $person in $named//*:persName 
  return ($person/*:forename || ' ' || $person/*:surname)
};

<body>
<div>
  <h1>Références</h1>
  <ul>{
    for $reference in //*:biblStruct
    return <li>{local:getName($reference)}, <em>{fn:normalize-space($reference/*:monogr/*:title[1])}</em></li>
  }</ul>
</div>

<div>
  <h1>Auteurs</h1>
  {let $personnes := 
    for $personne in (//*:author, //*:principal)
    order by $personne/*:surname
    return local:getName($personne)
  return <ul>{
    for $personne in fn:distinct-values($personnes)
    return <li>{$personne}</li>
    }</ul>
  }
</div>

<div>
  <h1>Auteurs deep-equal</h1>
  {let $personnes := 
    for $personne in (//*:author, //*:principal)
    order by $personne/*:surname
    return local:getName($personne)
  return <ul>{
    for $personne in fn:distinct-values($personnes)
    return <li>{$personne}</li>
    }</ul>
  }
</div>
</body>