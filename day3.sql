use world;

-- round() is used to round off values
select lifeExpectancy,round(lifeexpectancy) from country;

-- positive is used for index of decimals
select 83.62 , round(83.696,2);
 -- negative idx used  for (-1, ones   -2 fr tens , ......)
 select 456.23, round(576,-3);
 
 -- truncate() is used to extract decimal values
 
  select 456.23, round(576,-3),truncate(456.2222222222,3);
 
  select 456.23, round(576,-3),truncate(456.2222222222,6);
 
   select 42.3,mod(42,3);
   
   
select pow(2,3),ceil(32.9999),floor(32.9999999999999);



-- date() 
-- have in built functions date , time ko print krna

select now(),curdate(),current_time(),current_timestamp();


