###########################Assignment No 17######################################
        #Constraining the Values of your data.
use Day1;
###################################################################################

#1> Create the Orders table so that all onum values as well as all combinations of cnum and snum are different from one another, 
#and so that NULL values are excluded from the date field.

#to create
create table orders_s
 ( onum int(10), 
 cnum int(10), 
 snamee int(10), 
odate date NOT NULL,
 CONSTRAINT pk_1 PRIMARY key(onum,cnum,snamee) 
 );
 
#to show
 select *from orders_s;


#############################################################################################
#2>Create the Salespeople table so that the default commission is 10% with no NULLS permitted, snum is the primary key, 
#and all names fall alphabetically between A and M, inclusive (assume all names will be uppercase).


#to create
create table salespeople1
(
comm int(10) default 10, 
snum int(10) primary key,
 sname varchar(10) check(substr(upper(sname),1,1) between 'A' and 'M') 
 );

#to insert
insert into  salespeople1 values (20,102,'KARTIK');
insert into  salespeople1 values (30,103,'ANJALI');

#to show
select *from salespeople1;
######################################################################################################
#3> Create the Orders table, making sure that the onum is greater than the cnum, and
#the cnum is greater that the snum. Allow no NULLS in any of these three fields.
select *from orders;

#to create
create table orders1
 (
 Onum int(4) ,
 Amt float(7,2),
 Odate date,
 Cnum int(4) ,
 Snum int(4) ,constraint sayu check (cnum>snum and cnum<onum)
 );
 
 #to insert 
 insert into orders1 values (3010,18.80, '1990-10-10',2004,1004);
 insert into orders1 values(3011,19.80, '1990-10-11',2008,1008);
 #to show
 select *from orders1;
 


