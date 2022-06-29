show databases;

use customers;

show tables;

create table student(
student_id int auto_increment,
first_name varchar(25) not null,
last_name varchar(25) not null,
age int,
primary key(student_id)
);

insert into student values
(1,'Anurag','Panda',23),
(2,'Rohan','Gupta',29),
(3,'Joe','Martinez',56);

select * from student;

create table department(
student_id int auto_increment,
department_name varchar(25) not null,
foreign key(student_id) references student(student_id)
);

desc department;

insert into department values
(1,'Computer Science'),
(2,'Electronics'),
(3,'Mechanical');

select * from department;

create view student_information as 
select first_name,last_name,age from student inner join department 
using(student_id);

select * from student_information;

drop view student_information;

/*

A view is a virtual table based on result set of an SQL query.alter

*/
