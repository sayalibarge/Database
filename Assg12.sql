################################Assignment 12#########################################################
use Day1;
select *from salespeople;
select *from customers;
select *from orders;



#######################################################################################################
#1) Write a query that selects all customers whose ratings are equal to or greater than ANY of Serres’.



select cname,rating from customers 
where rating >= any (select rating from customers
 where snum in (select snum from salespeople where snamee = 'serres'));

###################################################################################################################
#2) Write a query using ANY or ALL that will find all salespeople who have no customers located in their city.

select city from salespeople;

select cname,city from customers where city != all(select city from salespeople);

#################################################################################################

#3) Write a query that selects all orders for amounts greater than any for the customers in London.

select * from orders where amt > any
(select amt from orders where cnum = any
(select cnum from customers where city = "london")); 


#########################################################################################
#4) Write the above query using MIN or MAX. 

select * from orders where amt > 
any(select min(amt) from orders where cnum = any
(select cnum from Customers where city = 'london'));


