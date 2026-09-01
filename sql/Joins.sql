Create database joins_sql;

use joins_sql;

create table Customers 
(CustomerID int not null,
CustomerName varchar(50),
ContactName varchar(50),
Address varchar(150),
City varchar(50),
PostalCode varchar(10),
Country varchar(20),
primary key(CustomerId)
);

create table orders
(OrderId int not null,
CustomerID int,
EmployeeId int,
OrderDate datetime ,
ShipperId int,
primary key(OrderId)
);

Insert into Customers values (1, "Satyajeet","Satyajeet","Hong Kong","Honk Kong",41235,"HongKong SAR"),
(2, "Shalini","Shalini","Banglore","Banglore",56789,"India"),
(3, "Rupa","Rupa","Banglore","Banglore",56789,"India"),
(10, "Shuvrajit","Shuvrajit","Banglore","Banglore",56789,"India"),
(4, "Priya","Priya","Banglore","Banglore",56789,"India"),
(5, "Ramesh","Ramesh","Banglore","Banglore",56789,"India"),
(6, "Suresh","Suresh","Hydrebad","Hydrebad",34567,"India"),
(7, "Sid","Sid","Mumbai","Mumbai",23456,"India"),
(8, "Navya","Navya","Delhi","Delhi",34567,"India"),
(9, "Naina","Navya","Pune","Pune",45678,"India");

select * from Customers;

insert into orders values (901,1,1,sysdate(),92801);
insert into orders values (902,1,1,sysdate()-10,92801);
insert into orders values (903,4,4,sysdate()-20,92801);
insert into orders values (904,5,5,sysdate()-30,92801);
insert into orders values (905,6,6,sysdate()-40,92801);
insert into orders values(906, 11,11 ,sysdate()-15,92801);

select * from orders ;

-- Left join

select c.CustomerId , c.CustomerName , c.Country , o.OrderId , o.OrderDate from Customers c Left Join orders o on c.CustomerId = o.CustomerId ;

select c.CustomerId , c.CustomerName , c.Country , o.OrderId , o.OrderDate from Customers c Right Join orders o on c.CustomerId = o.CustomerId ;

select c.CustomerId , c.CustomerName , c.Country , o.OrderId , o.OrderDate from Customers c Inner Join orders o on c.CustomerId = o.CustomerId ;

select c.CustomerId , c.CustomerName , c.Country , o.OrderId , o.OrderDate from Customers c left outer Join orders o on c.CustomerId = o.CustomerId ;

select c.CustomerId , c.CustomerName , c.Country , o.OrderId , o.OrderDate from Customers c right outer Join orders o on c.CustomerId = o.CustomerId ;

-- Full outer join 

select c.CustomerId , c.CustomerName , c.Country , o.OrderId , o.OrderDate from Customers c left outer Join orders o on c.CustomerId = o.CustomerId 
Union
select c.CustomerId , c.CustomerName , c.Country , o.OrderId , o.OrderDate from Customers c right outer Join orders o on c.CustomerId = o.CustomerId ;

select c.CustomerId , c.CustomerName , c.Country , o.OrderId , o.OrderDate from Customers c cross Join orders o on c.CustomerId = o.CustomerId ;





