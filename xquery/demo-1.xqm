for $pays in /mondial/country
  order by fn:number($pays/@population) descending
  return <pays>
           {$pays/name[1] || ' ' || $pays/@population}
         </pays>