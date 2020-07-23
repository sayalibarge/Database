

#1>Write a query that lists each order number followed by the name of the customer who made the order.

use Day1;

select *from customers;

select *from orders;

select onum,cname from orders,customers   where  orders.cnum= customers.cnum
 group by onum,cname;



#2> Write a query that gives the names of both the salesperson and the customer for each order along with the order number.

select snamee,cname,onum from salespeople,customers,orders group by onum,snamee,cname;

select s.snamee,c.cname,o.onum
from orders o,customers c,salespeople s
where o.snum = c.snum
and c.snum = s.snum
group by o.onum
order by 1;



select onum,snamee,cname from orders,salespeople,customers 
where salespeople.snum=orders.snum and customers.snum=orders.snum  group by onum;


#3>Write a query that produces all customers serviced by salespeople with a commission above 12%. Output the customer’s name, the salesperson’s name,
#and the salesperson’s rate of commission.

select snamee,cname, comm*100 as "Rate of commission"  from salespeople,customers where customers.snum = salespeople .snum 
and  comm*100 >12;

#4> Write a query that calculates the amount of the salesperson’s commission on each order by a customer with a rating above 100

select amt,comm ,rating from salespeople,customers,orders where salespeople.snum = orders.snum and customers.snum = orders .snum 
and rating>100;

select amt,s.comm as 'Commission',c.rating "rating above 100"
from orders o,customers c,salespeople s
where o.snum = c.snum
and c.snum = s.snum
and c.rating>100
order by rating > 100;



