use sakila ;

select count(*) from payment where amount > 3 group by customer_id;

-- find total transc for each amount in the month is may



select amount,count(amount) from payment where  extract(month from payment_date) = 5 group by amount;

-- find max amount spend , avg amount spend and total amount spend for each staff && on ly for customer id 1 3 7 11
select max(amount) ,avg(amount),sum(amount) from payment group by staff_id;
--
select max(amount) ,avg(amount),sum(amount) from payment where customer_id in (1,3,7,11) group by staff_id;


-- find total amount spend and the no. of customer who have done the payment in each month  where amount spend should be greater than 1 


select sum(amount), count(customer_id) , month(payment_date) from payment where amount>1 group by month(payment_date); 