###########################Assignment No 20######################################
				#Changing Values through Views.

use Day1;
#############################################################################
#1) Which of these views are updateable (will allow DML operations)?
   #i> Create View Dailyorders as Select Distinct cnum, snum, onum, odate from Orders;
   
  -- this view will allowed to create updatable view
 
   
   #ii> Create View Custotals as Select cname, Sum (amt) Sum_Amt from Orders, Customers where Orders.cnum=Customers.cnum
        Group by cname; 
  
 -- this view is not allow to create updatable view because 
-- if you use aggregate function,group by,join then you cannot then you cannot create an updatable view

  #iii> Create view Thirdorders as Select * from Dailyorders where odate=’1990-10-03’;
    
    -- this view will allowed to create updatable view

    
  #iv> Create view Nullcities as Select snum, sname, city from Salespeople where city is NULL
           OR sname BETWEEN ‘A’ and ‘MZ’;    
           
    -- this view will allowed to create updatable view

###################################################################################

#2> Create a view of the Salespeople table called Commissions. This view will include
only the snum and comm fields. Through this view, someone could enter or change
commissions, but only to values between .10 and .20.

create view commission 
as
select  snum,comm from salespeople where comm between .10 and .20;
           
           
 select *from commission;        
 ################################################################################
 #3> Some SQL implementations have a built-in constant representing the current date,
sometimes called “CURDATE” or “SYSDATE”. The word SYSDATE can
therefore be used in a SQL statement, and be replaced by the current date when the
value is accessed by commands such as Select or Insert. We will use a view of the
Orders table called Entryorders to insert rows into the Orders table. Create the
Orders table, so that SYSDATE is automatically inserted for odate if no value is 
given. Then create the Entryorders view so that no values can be given

show databases;

use Day1;
create table ORDERSsys
( 	Onum int(4),
	Amt float(7,2),
	Odate datetime default now(),
	Snum int(4),
	primary key(Onum),
	Foreign Key(Snum) references SALESPEOPLE(Snum)
);


insert into ORDERSsys(onum,amt,snum)
values(3001,18.69,1007),
(3003,767.19,1001),
(3002,1900.10,1004),
(3005,5160.45,1002),
(3006,1098.16,1007),
(3009,1713.23,1003),
(3007,75.75,1002),
(3008,4723.00,1001),
(3010,1309.95,1002),
(3011,9891.88,1001);

select * from orderssys;