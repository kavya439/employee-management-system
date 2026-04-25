-- Function: Get department wise employee count
CREATE OR REPLACE FUNCTION get_dept_count (
    p_dept IN VARCHAR2
) RETURN NUMBER AS
    v_count NUMBER;
BEGIN
    SELECT COUNT(*) INTO v_count
    FROM employees
    WHERE department = p_dept
    AND status = 'ACTIVE';
    RETURN v_count;
END;
/

-- Test the function
SELECT get_dept_count('IT') AS it_count FROM DUAL;
SELECT get_dept_count('HR') AS hr_count FROM DUAL;
