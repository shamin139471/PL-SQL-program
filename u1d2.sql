--calculate cube square
set serveroutput on
declare
	n1 number(6):=&n1;
	square number(7);
	cube number(7);
begin
	square:=n1*n1;
	cube:=n1*n1*n1;
	dbms_output.put_line('square is='||square);
	dbms_output.put_line('cube is='||cube);
end;
/