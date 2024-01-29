-- Join

select * from Student inner join Result on student.Roll_No = Result.Roll_No;


-- Inner join

select s.Roll_No, s.Name, r.Marks from Student as s inner join Result as r on s.Roll_No = r.Roll_No;


-- Left join

select s.Roll_No, s.Name, r.Marks from Student as s left join Result as r on s.Roll_No = r.Roll_No;


-- Right join

select s.Roll_No, s.Name, r.Marks from Student as s right join Result as r on s.Roll_No = r.Roll_No;


-- Full join

select s.Roll_No, s.Name, r.Marks from Student as s left join Result as r on s.Roll_No = r.Roll_No
union
select s.Roll_No, s.Name, r.Marks from Student as s right join Result as r on s.Roll_No = r.Roll_No;

