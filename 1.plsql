SET SERVEROUTPUT ON;
Declare
  name varchar2(20);
  rollno number;
  mark1 number;
  mark2 number;
  mark3 number;
  mark4 number;
  total number;
  percentage number(8,2);
  
Begin
  name:='&name';
  rollno:=&rollno;
  mark1:=&mark1;
  mark2:=&mark2;
  mark3:=&mark3;
  mark4:=&mark4;
  total:=mark1+mark2+mark3+mark4;
  percentage:=total/4;
  dbms_output.put_line('Student details');
  dbms_output.put_line('Name:'||name);
  dbms_output.put_line('Roll no:'||rollno);
  dbms_output.put_line('Total mark='||total);
  dbms_output.put_line('Percentage'||percentage);
End;
/
