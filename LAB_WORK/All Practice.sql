use Lab_Work;

create table employee(
id int primary key,
name text not null,
department varchar(50),
salary int default 0,
mobile varchar(10),
city text
);

insert into employee(id, name, department, salary, mobile, city) values
(1, "Raviraj", "Full Stack", 38000, "9639876540", "Surendranagar"),
(2, "Harshit", "React Js", 31000, "7894561302", "Amareli"),
(3, "Mayur", "Web Designer", 24000, "8529637410", "Morbi");

insert into employee values
(4, "Utsav", "React Js", 27000, 8974563210, "Junagadh");

select * from employee;

alter table employee
add company_Name text;

alter table employee
modify company_Name varchar(50);

alter table employee rename to developers;

alter table developers
drop company_Name;

drop table employee;

select * from developers;

truncate table developers;

insert into developers (id, name, department, salary, mobile, city) values
(5, "Meet", "Web Designer", 21000, 6547893210, "Mahesana");

update developers
set department = "PHP Developer"
where id = 3;

delete from developers
where id = 5;

select name, department, salary from developers
where department = "PHP Developer";

select name, department, salary from developers
where department between "a" and "q";

select id as developer_id, name as developer_name from developers;

select * from developers
where salary > 30000;

select * from developers
order by name desc;

select count(id), department, sum(salary) from developers
group by department
having sum(salary)<50000;

create table company(
id int,
c_name varchar(50)
);

alter table company
drop foreign key id;

insert into company (id, c_name) values
(1, "viitocloud"),
(2, "acute"),
(3, "cross shore"),
(5, "green cube");

drop table company;

select * from company;

-- join quary

select d.id, d.name, d.salary, d.department, c.c_name from developers as d inner join company as c on d.id = c.id;

select d.id, d.name, d.salary, d.department, c.c_name from developers as d left join company as c on d.id = c.id;

select d.id, d.name, d.salary, d.department, c.c_name from developers as d right join company as c on d.id = c.id;


select d.id, d.name, d.salary, d.department, c.c_name from developers as d left join company as c on d.id = c.id
union
select d.id, d.name, d.salary, d.department, c.c_name from developers as d right join company as c on d.id = c.id;


-- create procedure

delimiter @@

create procedure show_data()
begin

select * from developers;

end @@

call show_data();

drop procedure show_data;