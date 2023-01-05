# sql-challenge

The files that have been presented in this challenge are the :

Entity Relationship Diagram as an image file ERD.png
Queries.sql
Schemata.sql
8 Data output files for queries 1 to 8 
data-Q1.csv
data-Q2.csv
data-Q3.csv
data-Q4.csv
data-Q5.csv
data-Q6.csv
data-Q7.csv
data-Q8.csv



The Entity Relationship Diagram shows the relationship between the six tables within the employee_db:

1. employees
2. departments
3. salaries
4. titles
5. dept_manager
6. dept_emp

-employees has coulumns
emp_no,	emp_title_id,	birth_date,	first_name,	last_name,	sex,	hire_date
where emp_no is the PRIMARY KEY and emp_title_id is the same as title_id in table titles

-departments has columns
dept_no,	dept_name
where dept_no	is the PRIMARY KEY

-salaries which has columns
emp_no,	salary
where emp_no is the  PRIMARY KEY and also a FOREIGN KEY because it is the  PRIMARY KEY in employees table

-titles which has columns
title_id,	title
where title_id and title are  PRIMARY KEYs and title_id is the same as emp_title_id in employees table

-dept_manager which has columns
dept_no,	emp_no
where dept_no is the PRIMARY KEY from from departments table and emp_no is the PRIMARY KEY from employees table
which also makes them both FOREIGN KEYS in this table


-dept_emp which has columns
emp_no,	dept_no
where dept_no is the PRIMARY KEY from from departments table and emp_no is the PRIMARY KEY from employees table 
which also makes them both FOREIGN KEYS in this table


Queries.sql file shows the SQL syntax used to query the employees database for information in the tables within the datatbase. Table names referred to above

Schemata.sql files shows the SQL syntax used to create tables within the database. Table names referred to as above.
The database was created manually within PGAdmin however to create a database using SQL syntax the command line is CREATE DATABASE databasename;
which in this case was employess_db.  CREATE DATABASE employess_db;

Each of these CSV files correspond to one of the eight questions in SQL Challenge and comtain populated columns of data to satisfy the query request in each 
corresponding question
data-Q1.csv
data-Q2.csv
data-Q3.csv
data-Q4.csv
data-Q5.csv
data-Q6.csv
data-Q7.csv
data-Q8.csv

1. List the employee number, last name, first name, sex, and salary of each employee.

2. List the first name, last name, and hire date for the employees who were hired in 1986.

3. List the manager of each department along with their department number, department name, employee number, last name, and first name.

4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

6. List each employee in the Sales department, including their employee number, last name, and first name.

7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

