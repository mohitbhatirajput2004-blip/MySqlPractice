-- TCL (Transaction Control Language)
-- Use handel logical Statements
-- Transaction -> set of logical statements (Not permanent)
-- update


-- when the transaction  is going to started
-- ans) In case u run any dml operations, or  u write start transcation
-- when my t is going to automatically close 
-- ans) if i use any tcl command(commit and rollback) then my transaction will be closed
-- or in case if i run any ddl operation or any dcl operation

use regex ;

create table Actor_cp as select actor_id , first_name from sakila.actor
where actor_id between 1 and 5;

select * from Actor_cp;

-- Autocommit -> disable -- used to close autosave 
set @@autocommit=0;
select @@autocommit;
insert into actor_cp values(7 , "testoo");
select * from actor_cp;
commit; -- save changes or data in the database


set @@autocommit=0;
select @@autocommit;
insert into actor_cp values(8 , "tatoo");
update actor_cp set actor_id = 10000;
select * from actor_cp;
rollback;
select * from actor_cp;

set @@autocommit=1;
select @@autocommit;
insert into actor_cp values(8 , "tatoo");
update actor_cp set actor_id = 10000;
select * from actor_cp;
rollback;
select * from actor_cp;


start transaction; -- work same as autocommit =0
-- (stores data in temp memory until we use any ddl or tcl operations)
insert into actor_cp values(10, "oksksdj");
select * from actor_cp;
rollback;


start transaction;
delete from actor_cp where actor_id in(10000);
select * from actor_cp;
rollback;
select * from actor_cp;


start transaction;
insert into actor_cp values(11 , "Allah");

savepoint db_actor_cp_svpt1;
delete from actor_cp where actor_id in(11);
insert into actor_cp values(133 , "yoyoyoyoy");
select * from actor_cp;
rollback to db_actor_cp_svpt1;
select * from actor_cp;







