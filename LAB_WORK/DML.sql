-- DML :- Data Manipalution Language (insert, update, delete)

-- insert

select * from students;

insert into students(name,id,mobile, address) values
("xyz",101,"7852385632", "Rajkot");

insert into students values
(103,"abc","5698741238", 58,"Surat"),
(104,"pqr","5698741239", 66,"Rajkot"),
(105,"xyz","5298741236", 60,"Vadodara");


-- update

update students
set per=57
where id=103;


-- delete

delete from students
where id=101;