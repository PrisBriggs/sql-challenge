-- Data Engineering
-- Creating tables schemas

-- Delete the table "titles" if it already exists
DROP TABLE IF EXISTS titles;
-- Create a new table
CREATE TABLE titles (
  title_id VARCHAR(5) NOT NULL,
  title VARCHAR(20) NOT NULL,
  PRIMARY KEY (title_id),
  CONSTRAINT T_titles UNIQUE (title_id, title)
);

-- Delete the table "employees" if it already exists
DROP TABLE IF EXISTS employees;
-- Create a new table
CREATE TABLE employees (
  emp_no INT NOT NULL,
  emp_title_id VARCHAR(5) NOT NULL,
  birth_date DATE NOT NULL,
  first_name VARCHAR(20) NOT NULL,
  last_name VARCHAR(20) NOT NULL,
  sex VARCHAR(1),
  hire_date DATE NOT NULL,
  FOREIGN KEY (emp_title_id) REFERENCES titles(title_id),
  PRIMARY KEY (emp_no),
  CONSTRAINT E_empNO UNIQUE (emp_no)
);

-- Delete the table "departments" if it already exists
DROP TABLE IF EXISTS departments;
-- Create a new table
CREATE TABLE departments (
  dept_no VARCHAR(4) NOT NULL,
  dept_name VARCHAR(20) NOT NULL,
  PRIMARY KEY (dept_no),
  CONSTRAINT D_depts UNIQUE (dept_no, dept_name) 
);

-- Delete the table "dept_emp" if it already exists
DROP TABLE IF EXISTS dept_emp;
-- Create a new table with a composite key because none 
-- of the columns are unique on this dataset
CREATE TABLE dept_emp (
  emp_no INT NOT NULL,
  dept_no VARCHAR(4) NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
  FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
  PRIMARY KEY (emp_no, dept_no)
);

-- Delete the table "salaries" if it already exists
DROP TABLE IF EXISTS salaries;
-- Create a new table
CREATE TABLE salaries (
  emp_no INT NOT NULL,
  salary INT NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
  PRIMARY KEY (emp_no),
  CONSTRAINT S_empNO UNIQUE (emp_no)
);

-- Delete the table "dept_manager" if it already exists
DROP TABLE IF EXISTS dept_manager;
-- Create a new table
CREATE TABLE dept_manager (
  dept_no VARCHAR(4) NOT NULL,
  emp_no INT NOT NULL,
  FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
  PRIMARY KEY (emp_no),
  CONSTRAINT DM_empNO UNIQUE (emp_no)
);
