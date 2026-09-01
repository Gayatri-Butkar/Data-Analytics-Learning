show databases;

use intro_sql;

show tables;

select * from students;

-- 1 Alter 

-- add a column

Alter table students 
add column email  varchar(150);

insert into students (email) values ("satyajeet@gmail.com");

-- 2. Modify a column

-- Used when you want to change a column's data type, size, or other definition.

alter table students
modify student_name varchar(300);

-- Rename a column
alter table students rename column student_name to s_name;

-- Drop a column
Alter table students 
drop column email;

-- Change table name 
Alter table students 
rename to studentsd;

-- truncate
truncate table studentsd;
select * from studentsd;
-- drop
drop table studentsd;