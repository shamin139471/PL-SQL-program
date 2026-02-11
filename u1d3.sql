-- calculate discount of product
set serveroutput on
declare
	pname char(30):='&pname';
	qty number(10):='&qty';
	price number(10,2):='&price';
	per number(5):=20;
	disc number(8);
begin
	disc:=qty*price*per/100;
	dbms_output.put_line('discount of the product is'||disc);
end;
/