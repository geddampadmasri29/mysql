show databases;
create database sathyabama;
use sathyabama;
create table mech(
sid int,
sname varchar(30),
smarks int
);
Insert into mech values(1001,'padhu',8),(1002,'harshi',9),(1003,'jaanu',8);
show tables from sathyabama;
desc mech;
select * from mech;

Alter table mech add(
scountry varchar(20) default 'India'
);
Alter table mech rename column
scountry to slocation;

update mech set  slocation='china'
where sid=1003;

update mech set  slocation='china' , smarks=8
where sid=1002;

update mech set smarks = smarks-1;

