xquery version "3.0" ;
module namespace local = 'local' ;

declare function local:listeTitres(){
let $titles := db:open('Rey')//*:title
return <html>
  <head>
    <title>Ma page</title>
  </head>
  <body>
    <h1>Liste des textes (nb : {fn:count($titles)})</h1>
    <ul>{
      for $title in $titles
      return <li><a href="">{$title/text()}</a></li>
    }</ul>
  </body>
</html>
};

declare 
  %restxq:path("/ma-page")
  %output:method("html")
  %output:html-version("5.0")
function local:ma-page(){
  local:listeTitres()
};


