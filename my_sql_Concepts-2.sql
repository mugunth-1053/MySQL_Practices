create database db_2;
create table branch (
	branch_id int primary key auto_increment,
    br_name varchar(20),
    address varchar(30));
    
INSERT INTO branch VALUES(1,"Chennai","16 ABC Road");
INSERT INTO branch VALUES(2,"Coimbatore","120 15th Block");
INSERT INTO branch VALUES(3,"Mumbai","25 XYZ Road");
INSERT INTO branch VALUES(4,"Hydrabad","32 10th Street");
 
 select*from branch ;
#employee table connects branch foreign key branch_id--> fk_branch_id

create table employee (
	emp_id int primary key,
    ename varchar(30),
    job_desc varchar (20),
    salary int,
    branch_id int,
    constraint fk_branch_id foreign key(branch_id) references branch(branch_id));

INSERT INTO employee VALUES(1,'Ram','ADMIN',1000000,2);
INSERT INTO employee VALUES(2,'Harini','MANAGER',2500000,2);
INSERT INTO employee VALUES(3,'George','SALES',2000000,1);
INSERT INTO employee VALUES(4,'Ramya','SALES',1300000,2);
INSERT INTO employee VALUES(5,'Meena','HR',2000000,3);
INSERT INTO employee VALUES(6,'Ashok','MANAGER',3000000,1);
INSERT INTO employee VALUES(7,'Abdul','HR',2000000,1);
INSERT INTO employee VALUES(8,'Ramya','ENGINEER',1000000,2);
INSERT INTO employee VALUES(9,'Raghu','CEO',8000000,3);
INSERT INTO employee VALUES(10,'Arvind','MANAGER',2800000,3);
INSERT INTO employee VALUES(11,'Akshay','ENGINEER',1000000,1);
INSERT INTO employee VALUES(12,'John','ADMIN',2200000,1);
INSERT INTO employee VALUES(13,'Abinaya','ENGINEER',2100000,2);
INSERT INTO employee VALUES(14,'Vidya','ADMIN',2200000,NULL);
INSERT INTO employee VALUES(15,'Ranjani','ENGINEER',2100000,NULL);

select*from employee;
#INNER
select employee.emp_id,employee.ename,employee.job_desc,branch.br_name
from employee 
inner join branch 
on employee.branch_id=branch.branch_id order by emp_id;
# RIGHT
select employee.emp_id,employee.ename,employee.job_desc,branch.br_name
from employee 
right join branch 
on employee.branch_id=branch.branch_id order by emp_id;
#LEFT 
select employee.emp_id,employee.ename,employee.job_desc,branch.br_name
from employee 
left join branch 
on employee.branch_id=branch.branch_id order by emp_id;