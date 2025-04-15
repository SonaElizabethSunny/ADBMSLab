SET SERVEROUTPUT ON;
DECLARE
max_sal number (8,2);
v_empcount number(4);
v_empname employee109.emp_name%type;
v_empdepid employee109.dept_id%type;
BEGIN
select max(emp_salary) into max_sal from employee109;
DBMS_OUTPUT.PUT_LINE ('The highest Salary is ' || max_sal);
select count(emp_id) into v_empcount from employee109
where emp_salary = max_sal;
IF v_empcount > 1 then
DBMS_OUTPUT.PUT_LINE ('There are' ||v_empcount || 'employees with this salary');
ELSE
select emp_name, dept_id into v_empname, v_empdepid from employee109 where emp_salary=max_sal;
DBMS_OUTPUT.PUT_LINE ('The person having highest salary is '||v_empname);
DBMS_OUTPUT.PUT_LINE ('Department '||v_empdepid);
END IF;
END;
/
