

show databases;
use world;

select * from country where Continent not in ('North America' , 'Europe') ;
select * from country where Continent='North America' OR Continent = 'Europe' ;

select name,continent from country where IndepYear between 1901 and 1960;

select name,continent from country where IndepYear not between 1901 and 1960;


select code,name,region from country where Region != 'Middle East';

select IndepYear,name,population, (population*0.1) + population as ExpectedPopulation from country;

select * from country where LifeExpectancy in (38.3 , 66.4);

select name , continent, population ,gnp from country where population not between 5000 and 200000;  

 select name , continent, population ,gnp from country where   name  like 'Ir__'; 

