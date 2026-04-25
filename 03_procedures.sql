-- Procedure: Add Employee
CREATE OR REPLACE PROCEDURE add_employee (
    p_name   IN VARCHAR2,
    p_dept   IN VARCHAR2,
    p_salary IN NUMBER
) AS
BEGIN
    INSERT INTO employees (emp_name, department, salary)
    VALUES (p_name, p_dept, p_salary);
    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Employee added: ' || p_name);
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END;
/

-- Procedure: Update Salary
CREATE OR REPLACE PROCEDURE update_salary (
    p_emp_id IN NUMBER,
    p_salary IN NUMBER
) AS
BEGIN
    UPDATE employees
    SET salary = p_salary
    WHERE emp_id = p_emp_id;

    IF SQL%ROWCOUNT = 0 THEN
        DBMS_OUTPUT.PUT_LINE('Employee not found.');
    ELSE
        COMMIT;
        DBMS_OUTPUT.PUT_LINE('Salary updated successfully.');
    END IF;
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END;
/

-- Procedure: Deactivate Employee
CREATE OR REPLACE PROCEDURE delete_employee (
    p_emp_id IN NUMBER
) AS
BEGIN
    UPDATE employees
    SET status = 'INACTIVE'
    WHERE emp_id = p_emp_id;
    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Employee deactivated successfully.');
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END;
/
