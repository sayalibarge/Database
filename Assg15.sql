#####################################Assignment No 15#################################
             #Using Subqueries with DML Commands

use Day1;
select *from salespeople;
select *from customers;
select *from orders;              
                

#####################################################################################
#1>Assume there is a table called Multicust, with all of the same column definitions as Salespeople.
# Write a command that inserts all salespeople with more than one customer into this table.


create table Multicast as select * from salespeople where snum in
    (select snum from customers group by snum having count(snum) >1);

select *from Multicast;
########################################################################################
#2) Write a command that deletes all customers with no current orders.

savepoint a;
delete from  customers where cnum not in (select cnum from orders);
select *from customers;

rollback to a;
####################################################################################
#3) Write a command that increases by twenty percent

select *from salespeople;
update salespeople set comm=(comm+comm*.20) 
where snum  in(select snum from orders group by snum having sum(amt) > 3000);

