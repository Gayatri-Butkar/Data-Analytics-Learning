-- Insert 

use intro_sql;

create table emp_info
(
first_name varchar(50) ,
last_name varchar(50),
id int not null,
age int,
city varchar(20),
state varchar(20),
Primary key(id));

select * from emp_info;

Insert into emp_info
values("John","Jones",901,45,"Payson","Arizona");
insert into emp_info values ("Mary" , "Jones ", 903 , 32 , "Payson" , "Arizona");
insert into emp_info values ("Eric" , "Edwards ", 932 , 25 , "San Diego" , "California");
insert into emp_info values ("Mary Ann" , "Edwards ", 915 , 30 , "Phoneix" , "Arizona");
insert into emp_info values ("Ginger" , "Howell ", 953 , 36 , "Cottonwood" , "Arizona");
insert into emp_info values ("Sebestian" , "Smith ", 916 , 42 , "Gila Bend" , "Arizona");
insert into emp_info values ("Gus" , "Gray ", 946 , 35 , "Badgad" , "Arizona");
insert into emp_info values ("Mary Ann" , "May ", 956 , 52 , "Tucson" , "Arizona");
insert into emp_info values ("Leroy" , "Brown ", 936 , 22 , "Pine Top" , "Arizona");
insert into emp_info values ("Elroy" , "Cleaver ", 949 , 22 , "Globe" , "Arizona");

create table emp_exer(
emp_name varchar(50),
designation varchar(20),
age int,
salary int 
);

insert into emp_exer
values("Johnie Weber", "Seceratory",20,19500.00),
("Potsy Weber","Programmer",28,45200.00),
("Dirk Smith","Programmer",45,75020);

insert into emp_exer
values("Johny Rodri", "Data Engineer",32,70000.00),
("Rosh Jacks","IT Consultant",46,50000.00),
("Sushi Rosaland","Analyst",25,30200);

select * from emp_exer;

select * from emp_exer where salary > 30000;

select emp_name from emp_exer where age < 30;

select emp_name , salary from emp_exer where designation = "Programmer";

select * from emp_exer where emp_name like "%ebe%";

-- UPDATE

select * from emp_exer; 

-- Change column name 

-- update table_name set column_name = " " where filter
set SQL_SAFE_UPDATES = 0;

update emp_exer set designation = "Sr. Programmer" where emp_name = "Potsy Weber";

update emp_exer set designation = "Sr. Data Analyst" , age=30 where emp_name = "Sushi Rosaland";

select * from emp_exer; 

-- 1 Johnie weber has married to Bob Williams She has requested to chnage her last name to williams 

update emp_exer set emp_name = "Johnie Williams" where emp_name = "Johnie Weber";

-- 2 Dirk Smith birthday is today add 1 to his age

update emp_exer set age = age+1 where emp_name = "Dirk Smith";

-- 3 All Seceratories are now "Administrative Assistant ". Update all records .

Update emp_exer set designation = "Administrative Assistant" where designation = "Seceratory";

-- 4 Everyone that earns below 30000 are about to recieve 3500 salary raise 

Update emp_exer set salary = salary + 3500 where salary < 30000;
select * from emp_exer ;

-- 5 Everyone thats making salary over 35000 are now getting a 4500 salary raise 

update emp_exer set salary = salary + 4500 where salary > 35000;

-- 6 All Programmer titles are now peomoted to programmer ||

update emp_exer set designation = "Programmer II" where designation = "Programmer";
select * from emp_exer;

-- Delete

delete from emp_exer where designation = "IT Consultant";

delete from emp_exer;

-- JOINS 








