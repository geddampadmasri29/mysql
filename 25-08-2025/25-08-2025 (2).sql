show databases;
create database sathyabama;
use sathyabama;
create table workers(
wid int primary key,
wname varchar(20)  not null,
wdept varchar(20) not null,
wsalary long not null
);
insert into workers
values
(1,'harshi','seller',25000),
(2,'vaishu','supervisor',40000),
(3,'trivs','manager',50000),
(4,'padhu','cashier',20000),
(5,'jaanu','organiser',30000);
select * from workers;
select wid as worker_id, wname , wdept, wsalary
from workers;
CREATE VIEW worker_view AS
SELECT 
    wid AS worker_id, wname, wdept, wsalary,
    (wsalary * 12) AS annual_salary
FROM workers;
select *from worker_view;