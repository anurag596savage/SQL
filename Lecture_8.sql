show databases;

use customers;

show tables;

select * from student;

call get_student_info();

call get_info_by_age(27);

insert into student values
(6,'Ram','Kapoor',27),
(7,'Shahid','Anwar',27);

call student_info_by_age(@records,27);

select @records as total_records;

/*

Procedures used in the code :-

1.
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_student_info`()
BEGIN
select * from student;
END

2.
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_info_by_age`(in age int)
BEGIN
select * from student where student.age=age;
END

3.
CREATE DEFINER=`root`@`localhost` PROCEDURE `student_info_by_age`(inout records int,in age int)
BEGIN
select count(*) into records from student where student.age=age;
END

*/

