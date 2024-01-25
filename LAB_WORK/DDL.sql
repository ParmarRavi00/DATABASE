-- DDL :- Data Defination Language (create, alter, truncate, drop)

-- Constrain :- not null, check,

create database Lab_Work;

show databases;

use Lab_Work;

create table students(
id int primary key,
name text not null,
mobile varchar(10) unique,
per int 
);

insert into students(id, name, mobile, per) values
(1, "Ravirajsinh", "9638527410", 89),
(2, "Harshit", "8520741963", 80),
(3, "Mayur", "6547893210", 70),
(4, "Utsav", "7894561230", 75);

insert into students(id, name, mobile, address) values
(5, "XYZ", "7419638520", "Ahmedabad");

-- For All Coloumn
select * from students;

-- For Particular Coloumn
select name, mobile from students;

-- For Specific Record (Where clause used filter the data)
select * from students
where name="Harshit";

select id, name, mobile from students
where name="Ravirajsinh";


--  Rename for Table Name
alter table students rename to student;
select * from student;


-- Alter New Coloumn
alter table students
add address varchar(50);


-- Alter drop Coloumn
alter table students
drop address;

-- Alter modify Coloumn And Data Type of Coloumn
alter table students
modify per int default 0;

create table xyz (
id int,
name text,
address varchar(50));

insert into xyz(id, name, address) values
(1, "abc", "jhvhjbhjb"),
(2, "hjc", "ctrdty"),
(3, "nhc", "hvjgv");

select * from xyz;

truncate table xyz; -- Table ni Values ne Delete Karse

drop table xyz; -- Je Aakha Table ne Delete Karse

describe xyz; -- Je Table ni Details Aapse (Field Name, Type)


-- Update 
update students
set address="Ahmedabad"
where id=3;