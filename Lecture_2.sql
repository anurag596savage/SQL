create database customers;

show databases;

use customers;

create table customer_info( id integer auto_increment,
first_name varchar(25),last_name varchar(25),
salary integer, primary key(id));

show tables;

select * from customer_info;

insert into customer_info(first_name,last_name,salary) values
('Anurag','Panda',10000),
('Rohan','Nanda',60000),
('Aman','Gupta',70000),
('Kumar','Roy',56000),
('Sunil','Singh',NULL);

select * from customer_info;

select * from customer_info where salary is not null;

update customer_info set salary=40000 where id = 5;

select * from customer_info;

delete from customer_info where id=1;

select * from customer_info;
insert into customer_info(id,first_name,last_name,salary) values
(1,'Anurag','Panda',120000);

select * from customer_info;

alter table customer_info add email varchar(20);

select * from customer_info;

update customer_info set email = 'AP@gmail.com' where 
id = 1;
select * from customer_info;

update customer_info set email = 'RN@gmail.com' where id=2;
select * from customer_info;

update customer_info set email = 'AG@gmail.com' where id=3;

select * from customer_info;

update customer_info set email = 'KR@gmail.com' where id = 4;

select * from customer_info;

update customer_info set email = 'SS@gmail.com' where id = 5;

select * from customer_info;

alter table customer_info add DOB date;
select * from customer_info;

alter table customer_info modify DOB year;

desc customer_info;

update customer_info set DOB = 2000 where id=1;

select * from customer_info;

update customer_info set DOB = 1995 where id = 2;

select * from customer_info;

update customer_info set DOB = 1989 where id=3;
update customer_info set DOB = 2001 where id=4;
update customer_info set DOB = 1995 where id=5; 

select * from customer_info;

alter table customer_info drop email;

desc customer_info;

select * from customer_info;