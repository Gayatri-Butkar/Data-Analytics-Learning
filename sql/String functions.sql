use intro_sql;

show tables;

select * from emp_info;

select first_name , last_name from emp_info;

select concat (first_name," ",last_name) from emp_info;

select trim(first_name) from emp_info;

select concat(trim(first_name),' ',trim(last_name)) from emp_info;

select first_name , upper(first_name) as upper , lower(first_name) as lower from emp_info;

select character_length("hellow World");

select character_length(trim(first_name)), first_name from emp_info;

select mid("Hellow world",2,3);

select trim(first_name) , ceiling(character_length(trim(first_name))/2) from emp_info ;

select concat_ws("-",first_name,age) as enameandage from emp_info; -- concat with seperator

select length(first_name) from emp_info;

select ltrim("   hello");

select rtrim("   hello    ");

-- Extracting parts of string

select left("Programming" , 4) ;
select left(first_name,5) from emp_info; 

-- SUBSTRING()
-- Extracts part of a string.

-- SUBSTRING(string, start_position, length)


-- INSTR()

-- Finds the position of a substring.

select first_name, instr(first_name,"a") as aposition from emp_info;

-- POSITION() another way to find substring 

select first_name ,position("s" in first_name) from emp_info; 

-- Replace
select first_name, replace(first_name , "ro" , "or") from emp_info;

-- REPEAT 
select repeat("SQL" , 3);

-- Reverse 


-- Padding
-- 21. LPAD()
-- Adds characters to the left until the string reaches a specified length.

select lpad(123,7,0);

select rpad(123,7,13);

-- FORMAT()

-- Formats a number with commas and decimal places. Although technically a number-formatting function, you'll commonly see it alongside string functions because it returns a string

select format(123456,0);
select format(123456,2);

-- MySQL doesn't have a simple built-in SPLIT() function like some other databases.

-- But you can extract pieces using functions such as:

select substring_index('gayatributkar@gmail.com','@',1);

select substring_index('gayatributkar@gmail.com','@',-1);

