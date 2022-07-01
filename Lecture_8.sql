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

