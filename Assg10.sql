
################################Assignment 10################################################
#1)Write a query that produces all pairs of salespeople who are living in the same city.
Exclude combinations of salespeople with themselves as well as duplicate
rows with the order reversed.

use Day1;
select *from salespeople;

select snamee,city from salespeople 

select Cname , Rating 
from customers
where Cnum in (select Cnum from orders 
               where amt > (select avg(amt) 
			from orders));


####################################################################################################
#2) Write a query that produces the names and cities of all customers with the same rating as Hoffman.


select  *from customers;

select cname,city,rating from customers
where rating = (select rating from customers where cname = 'Hoffman');




