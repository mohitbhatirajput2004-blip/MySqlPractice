-- SQL constraints are rules used to limit the type of data that can go into a table, ensuring the accuracy, reliability, and integrity of the information stored in a database.

-- NOT NULL: Prevents a column from having a NULL value.
-- UNIQUE: Ensures all values in a column are distinct, allowing only one NULL value typically.
-- PRIMARY KEY: Uniquely identifies each row, combining NOT NULL and UNIQUE.
-- FOREIGN KEY: Links a column to the PRIMARY KEY of another table, ensuring referential integrity.
-- CHECK: Ensures column values meet a specific condition.
-- DEFAULT: Assigns a default value if none is specified during insertion.
-- CREATE INDEX: Improves data retrieval speed, though technically a schema object 

use regex;
create table table1(sno int) ;
insert into table1 values (1);
insert into table1(sno) values(23);

create table table2(sno int not null ,salary int) ;
insert into table2 values(1,200);
insert into table2 values(null , 600); -- error bcz cant store null in sno column

select * from table2 ;

create table table3(sno int not null default 80,salary int) ;
insert into table3(salary) values(200);

select * from table3 ;


create table table4(sno int not null,salary int unique default 10000) ;

insert into table4 values(1,20000);
insert into table4(sno) values(2);
insert into table4(sno) values(3); -- error
insert into table4 values(4,null);
insert into table4 values(5, null); -- therre can be mutiple null values in unique key 
select * from table4 ;


create table table5(sno int check (sno between 1 and 100),salary int ,
check(salary in (1000,2000))) ;
insert into table5 values(101,20000);


create table table6(sno int check (sno between 1 and 100),salary int ,
check(salary in (1000,2000))) ;
