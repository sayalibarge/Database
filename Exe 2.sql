



use Day1;

create table Supplier 
 (
   `S#`  varchar(10),
   Sname  varchar(50),
   STATUS  int(4),
   CITY varchar(20)
   );
   
   insert into Supplier values
   ('S1','Sayu','10','Loni'),
   ('S2','Prachi','20','Kolhar'),
   ('S3','Shivam','30','Pune'),
   ('S4','Kartik','40','Mumbai');
   
   select *from supplier;
   
   create table PARTS 
    (
    `P#` varchar(10),
    Pname varchar(20),
    Color varchar(10),
    Weight int(4),
    City  varchar(15)
    );
    
    
    insert into PARTS values
    ('P1','Clutch','Black','2','Pune'),
     ('P2','Clutch','Black','2','Mumbai'),
      ('P3','Break','Black','4','Nagar'),
       ('P4','nutbols','Black','2','Mumbai'),
        ('P5','Clutch','Black','5','Nagar');
        
        select *from parts;
        
        create table PROJECTS
    (
    `J#` varchar(10),
    Jname varchar(20),
    City varchar(15)
    );
    
    insert into PROJECTS values
    ('J1','Shopping','Athens'),
    ('J2','Ola_book','Athens'),
    ('J3','movie_book','Athens'),
    ('J4','movie_book','London'),
    ('J5','movie_book','Paris');
    
    select *from projects;
=======================================================
   #1>Display the Supplier table in the descending order of CITY. 
select *from supplier order by city;

#2>Display the Part Table in the ascending order of CITY and within the city in the ascending order of Part names. 

SELECT city, pname from parts
	 ORDER BY city , pname;

#3>Display all the Suppliers with a status between 10 and 20. 
select *from supplier where status between 10 and 20;

#4>Display all the Parts and their Weight, which are not in the range of 10 and 15. 
select `p#` , weight from parts where weight not between 10 and 15;


#5>Display all the Part names starting with the letter ‘S’. 
select *from parts where pname like 's%';

#6>Display all the Suppliers, belonging to cities starting with the letter ‘L’. 

select *from supplier where city  like 'l%';

#7>Display all the Projects, with the third letter in JNAME as ‘n’. 

select *from projects where jname like '%n%';

