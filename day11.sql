-- datatype in sql
-- tiny int (1) , small int (2  byte) , medium int (3) , int (4) , long (8) , varchar float
-- char (character but of fix length)and varchar (stores String / Character Values) 
use regex ;

drop table table1;
create table table1(id tinyint unsigned); -- in this range is from 0 to 255 but if we remove unsigned it goes from -128 to 127

insert into table1 values (255);



drop table table1;
create table table1(id float , price double); -- in this float stores upto 3 decimal digit where as in double store large decimal values upto 15-16 digit

insert into table1 values (255.31214684,255.048554);


drop table table1;
create table table1(id double(5,2)); -- it means 5 total  3 digit aand 2 decimal values

insert into table1 values (255.233); -- ignores extra
insert into table1 values(2133.32);  -- out of range error

select * from table1;


