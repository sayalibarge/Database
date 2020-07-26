#############################Assignment No 13##################################
use Day1;
select *from salespeople;
select *from customers;
select *from orders;
################################################################################
#1>Create a union of two queries that shows the names, cities, and ratings of all customers. 
#Those with rating of 200 or greater will also have the words “High Rating”, 
#while the others will have the words “Low Rating”.



select cname,city ,rating 'High Rating' from customers
where rating >= 200 
union 
select cname,city,rating 'Low Rating' from customers 
where rating <= 200;
###########################################################################

#2>Write a command that produces the name and number of each salesperson and each customer with more than one current order. 
#Put the results in alphabetical order.


select snamee,snum from salespeople where snum in
(select snum from orders where cnum in
(select cnum from orders group by cnum having count(cnum)>1));


############################################################################

#3>Form a union of three queries. Have the first select the snums of all salespeople in San Jose; the second, 
#the cnums of all customers in San Jose; and the third the onums of all orders on October 3. 
#Retain duplicates between the last two queries but eliminate any redundancies between either of them and the first.
#(Note: in the sample tables as given, there would be no such redundancy. This is besides the point.)


select snum from salespeople where city = 'San jose' 
union
select cnum from customers where city = 'San jose'
union 
select snum from orders where odate = '1990-10-03';

#############################################################
