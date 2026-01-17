
-- TRUNCATE
 -- truncate is ddl statement 
 -- don't provide any condition
 -- we cant revert (rool back )the data
 
 -- DELETE
 -- delete is dml 
 -- provides condition
 -- we can roll back (NOte -  in case if you have executed any ddl statement then u cant roll back)
 
 
 
 -- obects are the structure that are used to store and manage the data
 -- create is uesd to create the object 
 -- drop is used to drop the the object
 -- alter is used to modify the structure 
 
 
 -- dml is used to manipulate the data 
 -- insert , delete  , update
 
 
 -- window func is uesd to perform aggregate funct.(calculation) on set of  rows with refrence  to current row. 
 -- it has mainly 3 parts 
 -- 1) Over :  it is used to apply a function over the window(set of rows)
 
use world;

select code , name , population,  sum(population) over()  , avg(population) over() from country;


 
 -- 2) Partition  by :  This is used to apply  logic in the group (almost same as group by )

select * from country; 
 select continent , sum(population) from country group by continent;

select code , name , population , region ,sum(population) over(partition by  population)  from country;  

-- what is the running sum or cummulative sum? -- jaise jaise data aata jaa rha usee ginte rhe ho  in this we use order by instead of partition by 

select code , name , population , region ,sum(population) over(order by population)  from country;  






 