########################ASSIGNMENT NO 4###########################
use Day1;

#1>Write a select command that produces the order number, amount, and date for all
#rows in the Orders table.
select onum,amt,odate from orders;

#2>Write a query that produces all rows from the Customers table for which the
#salesperson’s number is 1001
select * from customers where snum ="1001";

#3>Write a query that displays the Salespeople table with the columns in the
#following order: city, sname, snum, comm.
select city,snamee,snum,comm from salespeople;

#4>Write a select command that produces the rating followed by the name of each
#customer in San Jose
select rating,cname from customers where city = "San Jose";

#5>Write a query that will produce the snum values of all salespeople (suppress the
#duplicates) with orders in the Orders table.

select distinct snum
from salespeople
order by snum;