# Entity Relationship Diagram - Module 9 Challenge - SQL

titles
-
title_id PK varchar(5)
title varchar(20)

employees
-
emp_no PK int 
emp_title_id varchar(5) FK >- titles.title_id
birth_date date
first_name varchar(20)
last_name varchar(20)
sex varchar(1)
hire_date date

departments
-
dept_no PK varchar(4)
dept_name varchar(20)

dept_emp
-
emp_no PK int FK >- employees.emp_no
dept_no PK varchar(4) FK >- departments.dept_no

salaries
-
emp_no PK int FK >- employees.emp_no
salary int

dept_manager
-
dept_no PK varchar(4) FK >- departments.dept_no
emp_no int FK >- employees.emp_no