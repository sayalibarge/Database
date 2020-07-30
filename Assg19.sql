##########################Assignment No 19#################################
						#Views.
use Day1;
select *from customers;
###########################################################################
#1) Create a view that shows all of the customers who have the highest ratings.

create view customrate
 as 
 select* from customers where rating= (select max(rating) from customers);

select *from customrate;
############################################################################
#2) Create a view that shows the number of salespeople in each city.

create view peoplecity
as
select count(city) from salespeople group by city;

select *from peoplecity;
####################################################################################
#3) Create a view that shows the average and total orders for each each salesperson after 
#his or her name. Assume all names are unique.

create view ord_avg
as
select snamee, avg(onum), count(onum) from salespeople JOIN orders using (snum) group by snamee;

create view orderavg
as
select snamee, avg(amt) "Average", count(onum) "Total Orders" 
from orders,salespeople  
where orders.snum = salespeople.snum group by snamee;

drop view orderavg;
select *from orderavg;


####################################################################
#4>Create a view that shows each salesperson with multiple customers.

create view sale_custom
as
select snamee,cname FROM customers,salespeople
where  customers.snum = salespeople.snum ;

select *from sale_custom;