use world;

select * from country ;

select count(*),count(indepyear) from country;

select distinct continent,region from country;

select count(population),sum(population) , avg(population) from country;


select distinct(GovernmentForm) from country where continent = "asia" ;


select count(name ),sum(population) , count(distinct(indepyear))from country where continent = "africa";

-- get the total countries ,average surface area , the total population for the countries which has got therir independence from year 1947 , 1998 they are not included

select count(name),avg(SurfaceArea),sum(population) from country where  indepyear >1947 and indepyear <1998;





-- get total countrie, the no. of unique continents , along with avg population and total no. of capitals for the countries which are starting with A or d  

select count(name), count(distinct(continent)) , avg(population) , sum(capital) from country where name like "a%" or name like "d%";



-- we use goup by for making a group of  similar data ex: color is goup by  red,green ,yellow has di group , 

select GovernmentForm  , count(*) from country group by GovernmentForm;

select continent,count(region), count(name),min(population),sum(population), max(indepyear)  from country  group by continent;


-- from city table u have to find total cities , total district, unique district,total population from the city table

select  count(name),count(district),count(distinct(district)),sum(population) from city group by countrycode;

select * from city;
