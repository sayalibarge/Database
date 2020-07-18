

################Assignment 6#######################
#1>Write two different queries that would produce all orders taken on October 3rd or 4th,1990

use Day1;
select *from orders where odate="1990-10-3" or odate="1990-10-4";

select *from orders where not((odate="1990-10-03" or snum>1006) and amt>=1500);

select*from orders where odate between "1990-10-3" and "1990-10-4";
=================================================================================
#2>Write a query that selects all of the customers serviced by Peel or Motika.
#(Hint: the snum field relates the two tables to one another).

select *from customers where snum in(select snum from salespeople where snamee in("peel","motika"));


select 	* from customers where Snum in
( select Snum from salespeople where snamee in ('peel', 'Motika'));

===========================================================================
#3>Write a query that will produce all the customers whose names begin with a letter
#from ‘A’ to ‘G’.

select *from customers where cname>='A' and cname<'H';
============================================================================
#4>Write a query that selects all customers whose names begin with the letter ‘C’.

select *from customers where cname like 'C%';




====================================================================
#5>Write a query that selects all orders except those with zeroes or NULLs in the amt fields.

select *from orders where amt!="0" or amt!="NULL"; 

select *from  orders where amt not in('0','null');
