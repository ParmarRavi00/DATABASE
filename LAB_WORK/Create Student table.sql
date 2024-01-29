show databases;

use Lab_Work;

create table student(
Roll_No int primary key,
Name text not null,
Branch varchar(50)
);

select Roll_No, Name from student
where Roll_No=2;

insert into student(Roll_No, Name, Branch) values
(5, "Jayraj", "Computer Science");

insert into student values
(2, "Suhani", "Electronics and Communications"),
(3, "Kriti", "Electronics and Communications");


create table Result (
Roll_No int,
Marks int,
Status text 
);

insert into Result values
(1, 60, "Pass"),
(2, 68, "Pass"),
(3, 30, "Fail"),
(4, 51, "Pass"),
(6, 29, "Fail");


-- Join
select * from Student inner join Result on student.Roll_No = Result.Roll_No;

-- Inner Join
select s.Roll_No, s.Name, r.Marks from Student as s inner join Result as r on s.Roll_No = r.Roll_No;

-- Left Join
select s.Roll_No, s.Name, r.Marks from Student as s left join Result as r on s.Roll_No = r.Roll_No;

-- Right Join
select s.Roll_No, s.Name, r.Marks from Student as s right join Result as r on s.Roll_No = r.Roll_No;

-- Full Join
select s.Roll_No, s.Name, r.Marks from Student as s left join Result as r on s.Roll_No = r.Roll_No
union
select s.Roll_No, s.Name, r.Marks from Student as s right join Result as r on s.Roll_No = r.Roll_No;
