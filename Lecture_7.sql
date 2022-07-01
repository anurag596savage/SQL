show databases;

use customers;

show tables;

select * from student;

insert into student values (4,'Ramesh','Singh',35);

insert into student values(5,'Ankit','Kumar',27);

select * from department;

# Inner Join
select student.first_name,student.last_name,student.age,
department.department_name from student inner join department on
student.student_id=department.student_id;

# Left Join
select student.first_name,student.last_name,student.age,
department.department_name from student left join department on 
student.student_id=department.student_id;

# Right Join
select student.first_name,student.last_name,student.age,
department.department_name from student right join department
on student.student_id=department.student_id;

# Full Outer Join
select student.first_name,student.last_name,student.age,
department.department_name from student left join department on 
student.student_id=department.student_id;

# Right Join
select student.first_name,student.last_name,student.age,
department.department_name from student left join department
on student.student_id=department.student_id
union
select student.first_name,student.last_name,student.age,
department.department_name from student right join department
on student.student_id=department.student_id;

# Cross Join
select student.first_name,student.last_name,student.age,
department.department_name from student cross join department;

# Natural Join
select student.first_name,student.last_name,student.age,
department.department_name from student natural join department;

