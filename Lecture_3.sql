show databases;

create database student_info;

show databases;

use student_info;

show tables;

create table student(
id integer not null,
first_name varchar(25) not null,
last_name varchar(25) not null,
age integer
);

desc student;

alter table student modify age integer not null;

desc student;

create table person(
id integer not null,
first_name varchar(25) not null,
last_name varchar(25) not null,
age integer not null,
unique(id)
);

desc person;

insert into person values (1,'Anurag','Panda',22);

select * from person;

insert into person values(2,'Rohan','Kumar',32);

select * from person;

insert into person values(1,'Akash','Kapoor',27); # This line produces error

alter table person add unique(first_name);

desc person;

insert into person values (3,'Rohan','Nanda',24); # This line produces error

desc person;

alter table person add constraint uc_person unique(age,last_name);

desc person;

insert into person values(3,'Priya','Panda',22); # This line produces error

alter table person drop index uc_person;

desc person;

create table xyz(
id int not null,
first_name varchar(25) not null,
last_name varchar(25),
age int,
constraint uc_xyz primary key(id,first_name)
);

drop table xyz;

desc xyz;

alter table xyz drop primary key;

desc xyz;

alter table xyz add primary key(id);

desc xyz;