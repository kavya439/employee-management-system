# Employee Management System — Oracle PL/SQL

A database project built using Oracle PL/SQL to manage
employee records with full CRUD operations, audit logging,
and department-wise reporting.

## Features
- Add, Update, Deactivate employee records
- Stored procedures with exception handling
- Auto audit trigger for all DB changes
- Department count function

## Tech Stack
- Oracle PL/SQL
- Oracle FreeSQL (livesql.oracle.com)

## Files
| File                | Description |
|---------------------|-------------|
| 01_create_table.sql | Creates employees and audit log tables |
| 02_insert_data.sql  | Sample data insertion |
| 03_procedures.sql   | Add, Update, Deactivate procedures |
| 04_trigger.sql      | Auto audit log trigger |
| 05_function.sql     | Department count function |

## How to Run
1. Open livesql.oracle.com
2. Run each SQL file in order (01 to 05)
3. Test using EXEC commands
