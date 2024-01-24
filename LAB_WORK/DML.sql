-- DML :- insert, update, delete

use PHP;

-- update

insert into student(id, name, Phone, DOB, Percentage) values
(1, "Harshit", "9876543210", "2000-05-21", 80);

update student
set name="Mayur"
where id=1;

select * from student;

-- delete

delete from student
where id=1;