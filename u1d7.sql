--program to calculate result
set serveroutput on
declare
xrollno NUMBER(3):=&xrlno;
xm1 NUMBER(3);
xm2 NUMBER(3);
xm3 NUMBER(3);
xm4 NUMBER(3);

t NUMBER(3);
p NUMBER(3);
begin
select m1,m2,m3,m4 INTO xm1,xm2,xm3,xm4 from
marks where rollno=xrollno;

if (xm1 < 40) OR (xm2 < 40) OR (xm3 < 40) OR (xm4 <
40)
then
update marks set
total=0,per=0,result='Fail',grade='F' where rollno=xrollno;
end if;

t:=xm1 + xm2 + xm3 + xm4;
p:=t/4;
if p >= 40 and p < 50
then
update marks set

total=t,per=p,result='Pass',grade='D' where rollno=xrollno;

elsif p >= 50 and p < 60
then
update marks set

total=t,per=p,result='Pass',grade='C' where rollno=xrollno;

elsif p >= 60 and p < 70
then
update marks set

total=t,per=p,result='Pass',grade='B' where rollno=xrollno;

elsif p >= 70 and p <=100

then
update marks set

total=t,per=p,result='Pass',grade='A' where rollno=xrollno;
else
update marks set

total=0,per=0,result='Fail',grade='F' where rollno=xrollno;
end if;

end;
/