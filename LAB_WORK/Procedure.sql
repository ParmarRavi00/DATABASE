-- Create Procedure

use Lab_Work;

delimiter $$
create procedure display_data()
begin

select * from student;

end $$


-- Call Procedure

call display_data();


-- Remove Procedure

drop procedure display_data;