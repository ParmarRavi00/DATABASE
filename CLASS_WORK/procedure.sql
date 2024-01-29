-- procedure
delimiter $$
create procedure display_information()
begin
select * from student101;

end $$
-- for call the procedure 
call display_information;
 -- for remove procedure
drop procedure display_information;

-- example 2
-- user-defined function  : procedure
delimiter &&
create procedure display_info()
begin
	select * from employee
    where salary>22000;
    select * from employee order by id desc;
end &&
drop procedure display_info;