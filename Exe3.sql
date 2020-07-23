use Day1;

#1>Display all the Supplier names with the initial letter capital.

select *from supplier;
   
select concat(upper(substr(Sname,1,1)),lower(substr(Sname,2))) as Name from SUPPLIER;

Select concat(Upper(Substring(sname,1,1)),lower(Substring(sname,2,length(sname)))) from supplier;

#for fname and lname:
select concat( upper (substr(fname,1,1)), lower (substr(fname,2)), ' ', upper (substr(lname,1,1)), lower (substr(lname,2)) )  from emp; 

#2. Display all the Supplier names in upper case. 
select upper(sname) from supplier;

#3>Display all the Supplier names in lower case. 
select lower(sname) from supplier;

#4>Display all the Supplier names padded to 25 characters, with spaces on the left. 
select lpad(sname,25,' ') from supplier;


#5>Display all the Supplier names (with ‘la’ replaced by ‘ro’).  HINT: REPLACE. 
select replace(sname,'la','ro') from supplier;

select replace(sname,'yu','ro') from supplier;


#6>Implement the above command such that ‘l’ is replaced with ‘r’ and ‘a’ is replaced with ‘o’. 

select replace(replace(sname,'l','r'),'a','o') from supplier;

#7>Display the Supplier names and the lengths of the names. 

select sname,length(sname) from supplier;

#8>Use the soundex function to search for a supplier by the name of ‘BLOKE’. 
SELECT * FROM Supplier WHERE SOUNDEX(sname)= SOUNDEX('BLOKE');

SELECT * from supplier where soundex(sname)=soundex('sayuu');

#9>Display the Supplier name and the status (as Ten, Twenty, Thirty, etc.). 
select sname,status from supplier;

#10> Display the current day (e.g. Thursday). 

select dayname(now()) from dual;

select dayname(curdate()) from dual;

select dayname(curdate()) ;

create user Sayali

mysql -u Sayali -p
