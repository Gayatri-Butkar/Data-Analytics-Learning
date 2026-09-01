use intro_sql;

show tables;

select * from customer_churn;

select * from date_time;

ALTER TABLE date_time
RENAME COLUMN `Order Date` TO Order_date;

select datediff(sysdate() ,Order_date ) as time_difference ,Order_date , sysdate() from date_time ;

select adddate('2026-01-05' , Interval 10 day);

select adddate('2026-01-05' , Interval 10 year);

select adddate('2026-01-05' , Interval 10 quarter);

select adddate('2026-01-05' , Interval -10 day);

select curdate() ; -- Current date
select current_date(); 

select current_time();

select now(); -- current date and time

select current_timestamp();

select `Product ID` , Order_date , year(Order_date) from date_time;

select `Product ID` , Order_date , month(Order_date) from date_time;

select `Product ID` , Order_date , day(Order_date) from date_time;

select `Product ID` , Order_date , Hour(Order_date) from date_time;

select `Product ID` , Order_date , second(Order_date) from date_time;

select `Product ID` , Order_date , dayname(Order_date) from date_time;

select `Product ID` , Order_date , dayofweek(Order_date) from date_time;

select `Product ID` , Order_date , weekday(Order_date) from date_time;






