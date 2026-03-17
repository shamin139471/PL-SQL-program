--Write a PL/SQL block that uses a cursor attribute SQL%ROWCOUNT to raise the basic salary of employees by 10% also display message

set serveroutput on
declare
	cursor c1 IS select salary from emp where deptno=10;
	sal emp.salary%TYPE;
	n number;
begin
open c1;
loop
	fetch c1 into sal;
	exit when not c1%found;
	update emp set salary=sal+(sal*0.10) where deptno=10;
	n:=c1%ROWCOUNT;
end loop;
close c1;
dbms_output.put_line('total affected  rows:'||n);
end;
/
