-- in-built Functions

-- Aggregate Functions
select count(id)
from student;

select sum(id)
from student;

select avg(Percentage)
from student;

select min(Percentage)
from student;

select max(Percentage)
from student;

select round(Percentage)
from student;

select now()
from student;


-- Scaller Functions

select id, name, length(name) as length_of_name
from student;

select name, lcase(name) as lower_case
from student;

select name, ucase(name) as upper_case
from student;

select name, mid(name, 3, 5) as mid_letters
from student;