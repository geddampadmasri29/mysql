show databases;
create database sathhyabama;
use sathyabama;
create table worker(
worker_id int primary key,
worker_name varchar(20),
worker_department varchar(20),
worker_salary long not null,
worker_phn long not null
);
insert into worker(id,name,department,salary,phn)
values
(43733097,'padma sree','CSE',100000,6302222222),
(43733114,'jahnavi','EEE',100000,98949388762),
(43733037,'harshitha','ECE',90000,76467946794);
SHOW tables from sathyabama;
select * from worker;



