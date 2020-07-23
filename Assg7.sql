use Day1;

#1>Write a query that counts all orders for October 3.

select *from ORDERS;

select  count(onum) from orders where odate="1990-10-3";


#2>Write a query that counts the number of different non-NULL city values in the Customers table.
select count(city) from  customers where city is not null;

#3>Write a query that selects each customer’s smallest order.
select *from CUSTOMERS;

select min(amt) from orders;


#4) Write a query that selects the first customer, in alphabetical order, whose name begins with G.

select * from customers where cname like 'G%' order by cname;



#5) Write a query that selects the highest rating in each city.
select max(rating) from customers;



#6>Write a query that counts the number of salespeople registering orders for eachday. (If a salesperson has more than one order on a given day, he or she should be
#counted only once.).
