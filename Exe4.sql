use Day1;
select *from supplier;
select *from parts;

#1>Display the minimum Status in the Supplier table.

select min(status) from supplier;



#2> Display the maximum Weight in the Parts table. 

select max(weight) from parts;


#3>Display the average Weight of the Parts.

select avg(weight) from parts;


#4> Display the total Quantity sold for part ‘P1’. 

select * from SPJ;


select count(Qty) from spj where `P#`= 'P1';


#5. Display the total Quantity sold for each part.

 select `P#`,sum(Qty) from spj group by `P#`;
 
 select `P#`,sum(Qty) from spj group by `P#`;




#6. Display the average Quantity sold for each part. 

select `P#` ,avg(Qty) from spj group by `P#`;



#7. Display the maximum Quantity sold for each part, provided the maximum Quantity is greater than 800.

select `P#`,max(Qty>800) from spj group by `P#`;



#8. Display the Status and the count of Suppliers with that Status.

select status,count(`S#`) from supplier;


#9. Display the count of Projects going on in different cities.

select city,count(city) from projects group by city; 

 select city,count(`J#`) from projects group by city;

select city , count(*) from projects group by city ;


#10>What is the difference between COUNT(Status) and COUNT(*) ?

COUNT(Status):

	COUNT(Status) evaluates the expression for each row in a set and returns the number of rows 
    having a non-null values.
	
COUNT(*):

	COUNT(*) counts the number of items in a set. It includes NULL and duplicate values.
    It returns total number of rows in the table.



#11. Display the Status and the Count of Suppliers with that Status in the following format as shown below:-

Status Count 
Ten     1
Twenty  2
Thirty  3

