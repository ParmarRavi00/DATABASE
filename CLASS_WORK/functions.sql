-- DQL command
use finance;

-- aggregate function
select count(city)
from employee;

select sum(salary)
from employee;

select avg(salary)
from employee;

select min(salary)
from employee;

select max(salary)
from employee;

update employee
set name="urvi"
where name="abc";

-- scalar function
select name,length(name) as length_of_name
from employee;

select name,lcase(name) as lower_case
from employee;

select name,ucase(name) as upper_case
from employee;

select name,mid(name,1,3) as mid_letters
from employee;

select round(salary)
from employee;

select now()
from employee;







