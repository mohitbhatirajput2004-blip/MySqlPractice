use world;

 select name , continent, population ,gnp from country where   name  like 'Ir__'; 
 
 -- get name continent and reigon from country table where continen is not same as europe
 
 select  name ,continent , region from country  where continent not like  "Europe ";
 
 -- get name continent and reigon from country table where the second letter of a reigon is a
 
  select  name ,continent , region from country  where region like "_a%";
 
 
 -- get  name continent and reigon from country table where the continent last 3 char is i
  select  name ,continent , region from country  where continent like  "%i__";
 
 
 -- get  name continent and reigon from country table where the continent shoul be of min 5 char 
  select  name ,continent , region from country  where continent like "_____%";
 
 -- get  name continent and reigon from country table where in the contine 2nd letter and 2nd last i.
  select  name ,continent , region from country  where continent like "_c%i_ ";
 
-- get  name continent and reigon from country table where ATLEAST 2 A PRESTENT SEPRATED WITH CHAR 
 select  name ,continent , region from country  where continent like "%a_a%";
 
 
 -- Operators  AND , OR 
 
  select  name ,continent , region from country  where continent = "Europe" or continent ="Asia" ;
  
   select  name ,continent , region from country  where continent = "Asia" and region = "middle east";
   
   
 
 
 
       
