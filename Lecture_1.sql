show databases;

use grey_goose;

show tables;

select * from winter_internship;

create database customers;

show databases;

use customers;

create table customer_info(id integer,
first_name varchar(10), last_name varchar(10));

show tables;

select * from customer_info;

insert into customer_info(id,first_name,last_name) values
(1,'Anurag','Panda');

insert into customer_info(id,first_name,last_name) values
(2,'Ronit','Kumar');

select * from customer_info;

drop table customer_info;

show tables;

drop database customers;

show databases;

