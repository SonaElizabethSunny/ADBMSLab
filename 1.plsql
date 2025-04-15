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


SQL> @mark
Enter value for name: sona
old  12:   name:='&name';
new  12:   name:='sona';
Enter value for rollno: 33
old  13:   rollno:=&rollno;
new  13:   rollno:=33;
Enter value for mark1: 36
old  14:   mark1:=&mark1;
new  14:   mark1:=36;
Enter value for mark2: 37
old  15:   mark2:=&mark2;
new  15:   mark2:=37;
Enter value for mark3: 39
old  16:   mark3:=&mark3;
new  16:   mark3:=39;
Enter value for mark4: 34
old  17:   mark4:=&mark4;
new  17:   mark4:=34;
Student details
Name:sona
Roll no:33
Total mark=146
Percentage36.5

PL/SQL procedure successfully completed.


