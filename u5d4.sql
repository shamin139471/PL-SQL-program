--Write a trigger to insert the existing values of the EMP table into

NEWEMP table when the record is updated in EMP table.
create or replace trigger trig_def4
before update on emp
for each row
begin
insert into newemp (EID,ENAME,BASICSAL)
values(:OLD.EID, :OLD.ENAME ,:OLD.basicsal);
end;
/