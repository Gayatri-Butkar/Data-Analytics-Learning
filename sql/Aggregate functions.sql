use intro_sql;

show tables;

select * from students;

create table students 
(student_id int ,
sname varchar(50),
age int,
Gender char,
Location varchar(100)
);
desc students;
insert into students values (3,"Sita",34,"F","Italy"),
(4,"Jessica",32,"F","Hong Kong"),
(5,"Raju",34,"M","India");

select gender , count(*) from students
group by gender;

select location , count(*) from students
group by location;

select count(*) from students; -- Counts all values
select count(student_id) from students; -- ALl non null values 
select count(distinct age) from students; -- Get sum of all distinct non null values 

select sum(age) as sage from students;

select count(student_id) from students where age > 32;

select min(age) from students;

select max(age) from students;

select avg(age) from students;




