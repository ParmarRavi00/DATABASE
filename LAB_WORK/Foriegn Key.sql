-- Foriegn Key used to link two or more tables.

create table employee(
id int primary key,
name varchar(50)
);


create table salary(
id int,
salary int,
foreign key salary(id) references employee(id)
);