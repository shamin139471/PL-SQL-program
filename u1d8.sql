set serveroutput on
declare
xeid number(8):=&xeid;
basic number(8);
da number(8);
hra number(8);
medical number(8):=500;
pf number(8);
gross_sal number(8);
begin
select b_salary INTO basic from emp2 where eid=xeid;
da:= basic * 0.50;
hra:=basic * 0.15;
pf:=basic * 0.10;
gross_sal:=(basic + da + hra + medical )- pf;
update emp set gross_salary=gross_sal where eid=xeid;
commit;
end;
/