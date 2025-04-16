SET SERVEROUTPUT ON;

DECLARE  
    v_emp employee109%rowtype;
BEGIN  
    SELECT * INTO v_emp FROM employee109 WHERE emp_id = 104;

    DBMS_OUTPUT.PUT_LINE('*******************************'); 
    DBMS_OUTPUT.PUT_LINE('Faculty Name: ' || v_emp.emp_name);  
    DBMS_OUTPUT.PUT_LINE('Joining Date: ' || v_emp.emp_joindate);  
    DBMS_OUTPUT.PUT_LINE('Salary: ' || v_emp.emp_salary);  
    DBMS_OUTPUT.PUT_LINE('*******************************');
END;
/

