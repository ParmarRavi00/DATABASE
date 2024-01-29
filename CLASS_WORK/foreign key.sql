create table student( 
roll_no int ,
name varchar(10));
alter table student
modify roll_no int primary key;

create table exam(
roll_no int,
total int,
pr int,
foreign key(roll_no)  references student(roll_no)
);