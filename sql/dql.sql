show databases ;

use intro_sql;

show tables ;

desc empinfo;

create table empinfo 
(first_name varchar(20),
last_name varchar(20),
id int not null,
age int ,
city varchar(50),
state varchar(50),
primary key (id));

select * from empinfo;


insert into empinfo values ("Jack" , "Jones ", 900 , 30 , "Payson" , "Arizona");
insert into empinfo values ("Mary" , "Jones ", 901 , 32 , "Payson" , "Arizona");
insert into empinfo values ("Eric" , "Edwards ", 932 , 25 , "San Diego" , "California");
insert into empinfo values ("Mary Ann" , "Edwards ", 915 , 30 , "Phoneix" , "Arizona");
insert into empinfo values ("Ginger" , "Howell ", 953 , 36 , "Cottonwood" , "Arizona");
insert into empinfo values ("Sebestian" , "Smith ", 916 , 42 , "Gila Bend" , "Arizona");
insert into empinfo values ("Gus" , "Gray ", 946 , 35 , "Badgad" , "Arizona");
insert into empinfo values ("Mary Ann" , "May ", 956 , 52 , "Tucson" , "Arizona");
insert into empinfo values ("Leroy" , "Brown ", 936 , 22 , "Pine Top" , "Arizona");
insert into empinfo values ("Elroy" , "Cleaver ", 949 , 22 , "Globe" , "Arizona");

select first_name , last_name from empinfo;

select count(id) as Record_Count from empinfo;

select count(*) from empinfo;

select first_name as firstname , last_name as lastname from empinfo;

select first_name , last_name , city from empinfo;

select * from empinfo where age > 30 ;

select * from empinfo where age > 30  and age < 50 ;

select * from empinfo where first_name  like "e%" ;

select * from empinfo where last_name like "%s" ;

select * from empinfo where age=32 or age=22;

select * from empinfo where age in(32,22,42,52,82);

select * from empinfo where state like "%f%";

select * from empinfo where city like "%c%";

select * from empinfo where first_name like"er%";



