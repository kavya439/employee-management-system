-- Trigger: Auto log all changes
CREATE OR REPLACE TRIGGER trg_emp_changes
AFTER INSERT OR UPDATE OR DELETE ON employees
FOR EACH ROW
BEGIN
    IF INSERTING THEN
        INSERT INTO emp_audit_log (emp_id, action)
        VALUES (:NEW.emp_id, 'INSERT');
    ELSIF UPDATING THEN
        INSERT INTO emp_audit_log (emp_id, action)
        VALUES (:NEW.emp_id, 'UPDATE');
    ELSIF DELETING THEN
        INSERT INTO emp_audit_log (emp_id, action)
        VALUES (:OLD.emp_id, 'DELETE');
    END IF;
END;
/
