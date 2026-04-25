-- Create employees table
CREATE TABLE employees (
    emp_id      NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    emp_name    VARCHAR2(100) NOT NULL,
    department  VARCHAR2(50),
    salary      NUMBER(10,2),
    hire_date   DATE DEFAULT SYSDATE,
    status      VARCHAR2(10) DEFAULT 'ACTIVE'
);

-- Create audit log table
CREATE TABLE emp_audit_log (
    log_id     NUMBER GENERATED ALWAYS AS IDENTITY,
    emp_id     NUMBER,
    action     VARCHAR2(20),
    changed_on DATE DEFAULT SYSDATE
);
