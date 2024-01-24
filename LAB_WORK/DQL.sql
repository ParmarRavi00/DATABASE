-- DQL :-

-- select

use PHP;

insert into student(id, name, Phone, DOB, Percentage) values
(2, "Raviraj", "9876546451", "2001-08-15", 88),
(3, "Mayur", "4516846884", "2005-07-17", 70);

-- For all Coloumn
select * from student;

-- For Particular Coloumn
select id, name from student;

-- For Specific Record (Where clause used filter the data)
select * from student
where name="Harshit";

select * from student
where Percentage>85;

select * from student
where name!="Harshit";

-- Order by Ascending
select * from student
order by name asc;

-- Order by Descending
select * from student
order by name desc;


-- alise :- Are Used to give temporary name to coloumn
select id as student_id from student;

-- And
select * from student
where name="Raviraj" and Percentage>75;

-- OR
select * from student
where name="Raviraj" or Percentage>75;

-- in Short form of OR
select * from student
where name in ("Raviraj", "Mayur");

-- between Short form of AND
select * from student
where Percentage between 75 and 80;

-- like 
select * from student
where name like 'R%';

select * from student
where name like '%R';

select * from student
where name like '%R%';


-- is NULL
select * from student
where Percentage is null;

-- is Not NULL
select * from student
where Percentage is null;


select count(id), name
from student
group by name;


select name, sum(Percentage)
from student
group by name
having sum(Percentage)>75;
