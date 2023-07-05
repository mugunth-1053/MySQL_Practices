create database tcs_1;
create table Employee(
	emp_id int primary key,
    ename varchar(30),
    Designation varchar(30),
    salary int );

insert into Employee values
(01,"Mugu","Member","85000"),
(02,"Mahi","Admin","120000"),
(03,"loki","Manager","270000"),
(04,"karthi","TL","150000"),
(05,"jeeva","Developer","450000"),
(06,"pravin","Newbie","45000"),
(07,"Aakash","Trainer","150000"),
(08,"Soundharya","HR","320000"),
(09,"Gayathri","Tech-HR","560000"),
(10,"Rohit","Trainee","200000");
#WHERE CLAUSE CONCEPTS :
select*from Employee where ename="Soundharya";
select emp_id, ename, salary from Employee where salary>200000;
select emp_id, ename, salary from Employee where salary>260000 and Designation="Manager";
select*from Employee where designation in ("Admin","HR");
select*from Employee where designation="Admin" or designation="HR";
select*from Employee where salary between 200000 and 300000;
#LIKE AND WILDCARDS CONCEPTS:
select*from Employee where ename like "M%"; #filter Name starts with M
select*from Employee where ename like "p%n";  #name start with p and end with n
select*from Employee where ename like "%a"; #name ends with a letter 
select*from Employee where ename like "%h%"; #name contain h letter 
select*from Employee where ename like "__h%"; #third letter as h
#ORDER BY ASCENDING/DESCENDING :
select*from Employee order by salary asc; #ascending 
select*from Employee order by salary desc; #decending 
