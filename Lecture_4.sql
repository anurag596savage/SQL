show databases;

use student_info;

show tables;

create table abc(
id int not null,
first_name varchar(25) not null,
last_name varchar(25) not null,
age int not null
);

desc abc;

drop table abc;

create table abc(
id int not null,
first_name varchar(25) not null,
last_name varchar(25) not null,
age int not null,
primary key(id)
);

desc abc;

alter table abc drop primary key;

desc abc;

alter table abc add primary key(id);

desc abc;

drop table abc;

create table abc(
id int not null,
first_name varchar(25) not null,
last_name varchar(25) not null,
age int not null,
constraint pk_abc primary key(id,first_name)
);

desc abc;

alter table abc drop  primary key;

desc abc;

alter table abc add constraint pk_abc primary key(id,first_name);

desc abc;

alter table abc drop primary key;

desc abc;

drop table abc;

show tables;

create table employee(
	id int not null,
    first_name varchar(25) not null,
    last_name varchar(25) not null,
    age int,
    salary int,
    primary key(id)
);

desc employee;

create table department(
id int not null,
department_name varchar(25) not null,
department_id varchar(25) not null,
primary key(department_id),
constraint fk_employee_department foreign key(id) references employee(id)
);
desc department;

drop table department;

create table department(
id int not null,
department_name varchar(25) not null,
department_id varchar(25) not null,
primary key(department_id)
);

alter table department add foreign key(id) references employee(id);

desc department;

drop table department;

drop table employee;

create table employee(
id int not null,
first_name varchar(25) not null,
last_name varchar(25) not null,
age int,
salary int,
primary key(id),
check(salary<50000)
);

desc employee;

drop table employee;

show tables;

insert into employee values(1,'Anurag','Panda',23,900000);

insert into employee values(2,'Rohan','Gupta',31,40000);

select * from employee;

drop table employee;

create table employee(
id int not null,
first_name varchar(25) not null,
last_name varchar(25) not null,
city varchar(20) default 'Bangalore',
primary key(id)
);

desc employee;

alter table employee alter city drop default;

desc employee;

