-- Data Analysis

-- 1. List the employee number, last name, first name, sex, and salary of each employee.
-- Perform an INNER JOIN on the two tables
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees as e
INNER JOIN salaries as s ON
s.emp_no=e.emp_no;

-- 2. List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT e.first_name, e.last_name, e.hire_date
FROM employees as e
WHERE
  hire_date >= '1/1/1986'
	AND hire_date <= '12/31/1986';

-- 3. List the manager of each department along with their department number, department name, 
-- employee number, last name, and first name.
-- Join manager info with department info using aliases
SELECT dm.dept_no AS "Department no.", 
  d.dept_name AS "Department name", 
  dm.emp_no AS "Employee no.", 
  e.last_name AS "Manager's last name",
  e.first_name AS "Manager's first name"
FROM dept_manager as dm
INNER JOIN departments as d ON
dm.dept_no = d.dept_no
INNER JOIN employees as e ON
dm.emp_no = e.emp_no;

-- 4. List the department number for each employee along with that 
-- employee’s employee number, last name, first name, and department name.
SELECT d.dept_no AS "Department no.", 
  e.emp_no AS "Employee no.", 
  e.last_name AS "Employee's last name",
  e.first_name AS "Employee's first name",
  d.dept_name AS "Department name"
FROM employees as e
INNER JOIN dept_emp as de ON
de.emp_no = e.emp_no
INNER JOIN departments as d ON
de.dept_no = d.dept_no;

-- 5. List first name, last name, and sex of each employee 
-- whose first name is Hercules and whose last name 
-- begins with the letter B.
SELECT e.first_name, e.last_name, e.sex
FROM employees as e
WHERE
  first_name = 'Hercules'
	AND last_name LIKE 'B%';

-- 6. List each employee in the Sales department, 
-- including their employee number, last name, and first name.
SELECT e.emp_no AS "Employee no.", 
  e.last_name AS "Employee's last name",
  e.first_name AS "Employee's first name",
  d.dept_name AS "Department name"
FROM employees as e
INNER JOIN dept_emp as de ON
de.emp_no = e.emp_no
INNER JOIN departments as d ON
de.dept_no = d.dept_no
  WHERE
    dept_name = 'Sales';

-- 7. List each employee in the Sales and Development departments, 
-- including their employee number, last name, first name, 
-- and department name.
SELECT e.emp_no AS "Employee no.", 
  e.last_name AS "Employee's last name",
  e.first_name AS "Employee's first name",
  d.dept_name AS "Department name"
FROM employees as e
INNER JOIN dept_emp as de ON
de.emp_no = e.emp_no
INNER JOIN departments as d ON
de.dept_no = d.dept_no
  WHERE
    dept_name = 'Sales'
    OR dept_name = 'Development';

-- 8. List the frequency counts, in descending order, 
-- of all the employee last names 
-- (that is, how many employees share each last name).
SELECT last_name,  COUNT(emp_no) AS "Last name frequency"
FROM employees
GROUP BY last_name
ORDER BY "Last name frequency" DESC;
