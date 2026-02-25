set serveroutput on
declare
v_eid employee.empid%type:=&v_eid;
begin
	delete from employee
	 where empid=v_eid;

	IF SQL%FOUND then
	dbms_output.put_line('Record deleted successfully. Total rows affected:' || SQL%ROWCOUNT);

	ELSE
	dbms_output.put_line('error: no employee found with ID ' || v_eid);

	END IF;
	commit;
exception
	when others THEN
	dbms_output.put_line('An unexpected error occurred: '|| SQLERRM);
	ROLLBACK;

end;
/
	