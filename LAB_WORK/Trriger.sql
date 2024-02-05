-- Trigger (Two types of trriger 1. After,  2. Before)

use Lab_Work;

select * from result;

-- Change Coloumn Name
alter table result
change Marks mark2 int;

-- Add Primary Key
alter table result
modify column Roll_No int primary key;

alter table result
add total int;

-- Before Trriger (koi 2 coloumn no sum koi thiji coloumn ma Automatic Add karva mate Before Trriger no use thay chhe.)
create trigger sum_mark
before insert on result
for each row
set new.total = new.mark2 + new.mark1;

update result
set mark1 = 60
where Roll_No = 6;

-- Delete row (jyare aakha table ni badhi j coloumn mathi ek j coloumn ma data hoy ye vali row delete karva mate)
DELETE FROM result
WHERE mark2 = 62
LIMIT 1;

insert into result (Roll_No, mark2, Status, mark1) values
(7, 42, "Pass", 66);
