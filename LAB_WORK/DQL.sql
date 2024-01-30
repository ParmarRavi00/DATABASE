-- DQL :- Data Query Language

-- select

-- For all Coloumn
select * from students;

-- For Particular Coloumn
select id, name from students;

-- For Specific Record (Where clause used filter the data)
select * from students
where name="Harshit";

select * from students
where Per>85;

select * from students
where name!="Harshit";

select * from students;


-- alias used to give temporary name to the coloumns.
select id as student_id, name as student_name from students;


-- Order by Assending
select * from students
order by name asc;

-- Order by Dessending
select * from students
order by name desc;


-- where clause used to filter the data
select * from students
where per>75;

-- is NULL :- is null gives data which are empty.
select * from students
where address is null;

-- is Not NULL :- is not null gives that records which are not empty.
select * from students
where address is not null;


-- operators
-- 1)Arithmetic (+ - * / %)
-- 2)Comparison (<,<=,>,>=,=,!=)
-- 3)Logical (AND,OR,LIKE,IN,BETWEEN)

-- AND
select * from students
where address="Surat" AND per>55;

-- OR
select * from students
where address="Surat" OR per>80;

-- in (Short form of OR)  -- in, between only SAME field mate j use thase
select * from students
where name in ("Ravirajsinh", "Mayur");

-- between (Short form of AND)
select * from students
where Per between 75 and 80;


-- like 
select * from students
where name like 'R%';

select * from students
where name like '%R';

select * from students
where name like '%R%';

select * from students;

-- group by 
select count(id), address from students
group by address;

-- having clause used to filter data on group by
select address, sum(per) from students
group by address
having sum(per)>50;