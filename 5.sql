SET SERVEROUTPUT ON;

DECLARE
    n NUMBER;
    i NUMBER := 1;
    tot NUMBER := 0;
    CURSOR emp IS SELECT emp_salary FROM employee109;
    cemp emp%rowtype;
BEGIN
    n := &n;
    OPEN emp; 
    WHILE i <= n 
    LOOP
        FETCH emp INTO cemp;
        tot := tot + cemp.emp_salary;
        i := i + 1;
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('Total salary of first ' || n || ' employees is ' || tot);
    CLOSE emp; 
END;
/
