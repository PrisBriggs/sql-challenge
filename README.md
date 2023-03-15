# sql-challenge

Georgia Tech Data Analytics BootCamp - March 2023

Homework Module 09 - SQL Challenge
By Priscila Menezes Briggs

Challenge history
At this point in time, it’s been two weeks since I was hired as a new data engineer at Pewlett Hackard (a fictional company). My first major task is to do a research project about people whom the company employed during the 1980s and 1990s. All that remains of the employee database from that period are six CSV files.

For this project, I’ll design the tables to hold the data from the CSV files, import the CSV files into a SQL database, and then answer questions about the data. That is, I’ll perform data modeling, data engineering, and data analysis, respectively.

Data Modeling
For this challenge, an Entity Relationship Diagram was sketched using QuickDBD. This diagram contains the tables that were created for the required analysis, along with the variables investigated and their types, and the information about primary and foreign keys. 

Data Engineering
In addition, a script on VS Code using SQL was developed to create the tables schemas and perform the queries to calculate the desired values and analyze the results. The tables were created and the queries were run on pgAdmin. Two datasets departments.csv, dept_emp.csv, dept_manager.csv, employees.csv, salaries.csv and titles.csv had been provided as resources, which were composed of the following columns with data:

departments.csv: dept_no, dept_name
dept_emp.csv: emp_no, dept_no
dept_manager.csv: dept_no, emp_no
employees.csv: emp_no, emp_title_id, birth_date, first_name,    last_name, sex, hire_date
salaries.csv: emp_no, salary
titles.csv: title_id, title

Data Analysis
The description of the queries performed is given below:

1. It was created a list with the employee number, last name, first name, sex, and salary of each employee.

2. It was generated a list with the first name, last name, and hire date for the employees who were hired in 1986.

3. A list with the manager of each department along with their department number, department name, employee number, last name, and first name was created. 

4. It was listed the department number for each employee along with that employee’s employee number, last name, first name, and department name.

5. It was generated a list with first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

6. A list with each employee in the Sales department, including their employee number, last name, and first name was created. 

7. It was created a list with each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

8. A list with the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name) was generated. 

These queries could show accurate results in order to complete the research project. 

The file "Data_engineering_EmployeeSQL_queries.sql" inside the EmployeeSQL folder contains the script for the queries of this project, while the file "Data_engineering_EmployeeSQL_schema.sql" contains the tables schemas. In addition, the file "ERD for QuickDBD.sql" contains the script to generate the ERD and the file "QuickDBD-ERD - Module 9 challenge_final.png" shows the ERD. 

The script for this challenge is found in the GitHub's repository on:
https://github.com/PrisBriggs/sql-challenge

The references to build this script were the activities and lessons given in class in addition to the websites below. 

All webpages were visited in March/2023.

References:

SQL unique values
https://www.tutorialspoint.com/sql/sql-unique.htm

Constraints in SQL
https://dev.to/techelevator/name-your-constraints-4n10#:~:text=Constraints%20must%20have%20a%20name,generate%20a%20name%20for%20you
