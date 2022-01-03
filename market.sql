/*mysql tasks*/
create database market;
use market;
create table Smanager(
Mid int primary key,
Mname varchar(100),
shift varchar(100),
salary double
);

 insert into Smanager(Mid,Mname,shift,salary)
values(201, 'Jo', 'Morning', 10000);
insert into Smanager(Mid,Mname,shift,salary)
values(202, 'Joan', 'Afternonn', 5000);
 insert into Smanager(Mid,Mname,shift,salary)
values(203, 'Chi', 'Morning', 12500);
insert into Smanager(Mid,Mname,shift,salary)
values(204, 'Mark', 'late', 4000);
insert into Smanager(Mid,Mname,shift,salary)
values(205, 'Anna', 'Morning', 8000);
insert into Smanager(Mid,Mname,shift,salary)
values(206, 'Tony', 'late', 6000);
 insert into Smanager(Mid,Mname,shift,salary)
values(207, 'Hui', 'Early', 9000);
insert into Smanager(Mid,Mname,shift,salary)
values(208, 'Josh', 'Afternoon', 11000);
insert into Smanager(Mid,Mname,shift,salary)
values(209, 'Sadi', 'Early', 7000);
insert into Smanager(Mid,Mname,shift,salary)
values(210, 'Suw', 'Late', 12000);
/*Display average salary of manager.*/
select avg(salary)
from Smanager;
/* customer table*/
create table customers(
customerid int not null auto_increment,
primary key(customerid),
Cname varchar(100),
Cphone varchar(100),
Caddress varchar(100)
);

create table orders(
Orderid int not null auto_increment,
primary key(Orderid),
customerid int,
foreign key(customerid) references customers(customerid)
);

create table items(
Iid int not null auto_increment,
primary key(Iid),
Iname varchar(100),
TOTAL double,
date varchar(100)
);



create table ItemOrder(
 foreign key(Orderid) references orders(Orderid),
 Orderid int,
 Iid int,
foreign key(Iid) references items(Iid),
QTY int
);

/*create dishes table*/
 create table dishes(
Did varchar(100) primary key,
dish varchar(100),
price double,
category varchar(100)
);
drop table dishes;
create table dishes(
Did varchar(100) primary key,
dish varchar(100),
price double,
category varchar(100),
qty int
);

insert into dishes(Did, dish, price, category, qty)
values(1, 'beans', 2.00, 'protein', 2);
insert into dishes(Did, dish, price, category, qty)
values(2, 'carrot', 1.50, 'vegetable', 5);
insert into dishes(Did, dish, price, category, qty)
values(3, 'egg', 2.20, 'protein', 6);
 insert into dishes(Did, dish, price, category, qty)
values(4, 'salad', 2.80, 'vegetable', 3);
insert into dishes(Did, dish, price, category, qty)
values(5, 'bread', 1.80, 'grain', 2);
 insert into dishes(Did, dish, price, category, qty)
values(6, 'oat', 2.10, 'grain', 7);
insert into dishes(Did, dish, price, category, qty)
values(7, 'apple', 1.80, 'fruit', 9);
insert into dishes(Did, dish, price, category, qty)
values(8, 'yoghurt', 2.60, 'dairy', 5);
insert into dishes(Did, dish, price, category, qty)
values(9, 'coffee', 2.90, 'beverages', 6);
insert into dishes(Did, dish, price, category, qty)
values(10, 'hot chocolate', 1.80, 'beverages', 4);

/*Display total number of dishes serve in hotel*/
select sum(qty)
from dishes;
/*Display dishes as per category*/
select category, dish
from dishes;
