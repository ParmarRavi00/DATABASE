create database PHP;

-- Constrain :- not null, check, 

use PHP;

-- DDL :- create, alter, drop, truncate

create table students(
id int primary key,
name text not null,
Phone varchar(10),
DOB date,
Percentage int check(Percentage > 0)
);

insert into students(id, name, Phone, DOB, Percentage) values
(1, "Ravirajsinh", "8866598104", "1998-08-29", 86);

insert into students(id, name, Phone, DOB, Percentage) values
(2, "Harshit", "9876543210", "2000-05-21", 80);

select * from students;


-- alter 

-- 1) Rename for Table Name

alter table students rename to student;
select * from student;

-- 2) To add new Coloumn

alter table student
add Course text;

-- 3) To remove Coloumn

alter table student
drop Course;

-- 4) To Change Data Type of Coloumn

alter table student
modify name varchar(50);

-- truncate
truncate table student;


create table xyz(
id int primary key,
 name varchar(50)
 );
 
-- drop
drop table xyz;

show databases;
describe student;