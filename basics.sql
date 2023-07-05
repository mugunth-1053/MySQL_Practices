create database mec_1;
create table student(
	Stu_id int primary key,
    Name varchar(30),
    Department text ,
    Address varchar(30),
    CGPA float );

insert into student values
(1,"aaa","mech","Rasipuram","6.5"),
(2,"bbb","civil","Salem","7.8"),
(3,"ccc","Bio-Med","Rasipuram","6.5"),
(4,"ddd","Agri","Namakkal","8.7"),
(5,"eee","Bio-Tech","Ooty","9.1"),
(6,"fff","Chemical","Kovai","6.5");
select*from student;
