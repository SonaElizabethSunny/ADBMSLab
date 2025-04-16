SET SERVEROUTPUT ON;

ACCEPT v_id PROMPT 'Enter the Employee ID to search: '

DECLARE
    v_emp employee109%ROWTYPE;
    v_id NUMBER := &v_id;
BEGIN
    SELECT * INTO v_emp FROM employee109 WHERE emp_id = v_id;

    DBMS_OUTPUT.PUT_LINE('*******************');
    DBMS_OUTPUT.PUT_LINE('Name: ' || v_emp.emp_name);
    DBMS_OUTPUT.PUT_LINE('Join Date: ' || TO_CHAR(v_emp.emp_joindate, 'DD-MON-YYYY'));
    DBMS_OUTPUT.PUT_LINE('Salary: ' || v_emp.emp_salary);
    DBMS_OUTPUT.PUT_LINE('*******************');

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('There is no employee with ID ' || v_id);
END;
/
