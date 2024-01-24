-- comment line
-- create database
-- DDL create alter drop truncate
create database finance;

create database employee_data;

drop database employee_data;

show databases;
use finance;
create table employee(
id int primary key,
name text not null,
address varchar(25),
phone_no varchar(10) unique
);
create table employee1(
id int primary key,
name text not null,
address varchar(25),
phone_no varchar(10) unique
);

insert into employee1 (id,name,address,phone_no)values
(101,"xyz","nikol","9879654123"),
(102,"abc","nikol","5632145698");
-- not null: you can't leave empty record for this coloumn
-- primary key: shoudn't duplicate, not null
-- unique: you can leave record as null, duplicate entry is now allowed
insert into employee (id,name,address,phone_no,salary)values
(104,"xyz","nikol","9879654124",10000);
select * from  employee; -- dql

-- alter add coloumn
alter table employee
add salary int default 0;

alter table employee
add city varchar(5);

-- alter drop coloumn
alter table employee
drop Salary;

-- alter modify coloumn
alter table employee
modify salary varchar(5);
alter table employee
add department varchar(10);

alter table employee
modify salary int;

 drop table employee1;
 truncate table employee;
describe employee;

update employee
set city="nikol"
where id=101;

update employee
set city="CG"
where id=103;

update employee
set city="nikol"
where id=104;

update employee 
set city="CTM"
where id=111;