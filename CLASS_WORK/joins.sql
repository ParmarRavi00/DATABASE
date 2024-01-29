use finance;
create table student101(
id int primary key,
name varchar(50));

create table result(
r_id int primary key,
total int,
result varchar(5)
);
select * from student101;
select * from result;

insert into student101 values
(1,"xyz"),
(2,"abc"),
(4,"pqr");

insert into result values
(2,896,"pass");
(1, 482,"pass"),
(5,252,"fail");
-- joins
-- select * from student101 inner join  result on student101.id=result.r_id;
-- innerjoin
select s.id,s.name,r.result from student101 as s inner join result as r on s.id=r.r_id;
-- left join
select s.id,s.name,r.result from student101 as s left join result as r on s.id=r.r_id;
-- right join
select s.id,s.name,r.result from student101 as s right join result as r on s.id=r.r_id;
-- full join
select s.id,s.name,r.result from student101 as s left join result as r on s.id=r.r_id
union
select s.id,s.name,r.result from student101 as s right join result as r on s.id=r.r_id;


