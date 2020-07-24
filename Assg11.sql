
########################ASSIGNMENT  NO 2#######################################
use Day1;
select *from salespeople;

select *from customers;

select *from orders;

###################################################################################
#1>Write a query that uses a subquery to obtain all orders for the customer named Cisneros.
 Assume you do not know his customer number (cnum).

select *from orders where(cnum) in(select cnum from customers where Cname = 'Cisneros');

select *from orders where cnum = (select cnum from customers where cname = "Cisneros");


##################################################################################################
#2> Write a query that produces the names and ratings of all customers who have above-average orders.


select cname,rating from customers where  cnum in
(select cnum from orders where amt >
(select avg(amt) from orders));


####################################################################################################

#3>Write a query that selects the total amount in orders for each salesperson 
for whom this total is greater than the amount of the largest order in the table.

   
select sum(amt) from Orders group by snum having sum(amt) > (select max(amt) from orders);
   



