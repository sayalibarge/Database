############################Assignment No 14#################################
                #Entering, Deleting, and Changing Field Values.
  use Day1;
select *from salespeople;
select *from customers;
select *from orders;              
                
 ##########################################################################               
#1) Write a command that puts the following values, in their given order, into the  salespeople table: 
#city – San Jose, name – Blanco, comm – NULL, cnum – 1100.


insert into salespeople(city,snamee,comm,Snum) values("San Jose","Blanco",NULL,"1100");
select *from salespeople;

#######################################################################################
#2) Write a command that removes all orders from customer Clemens from the Orders table.

delete from orders where cnum in (select cnum from customers where Cname="Clemens");

########################################################################################
#3) Write a command that increases the rating of all customers in Rome by 100.

select *from customers;

savepoint a;
update customers
set rating=rating+100;

rollback to a;
#########################################################################################
#4) Salesperson Serres has left the company. Assign her customers to Motika

select *from salespeople;
select *from customers;
update customers set snum=
(select  snum from salespeople where snamee='serres')
where snum =(select snum from salespeople where snamee='Motika');

