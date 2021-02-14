--------------------------------------------------------------
--Part 1: Determine the number of retiring employees per title
--------------------------------------------------------------
-- Create tables employees 
CREATE TABLE employees (
	 emp_no INT NOT NULL,
     birth_date DATE NOT NULL,
     first_name VARCHAR NOT NULL,
     last_name VARCHAR NOT NULL,
     gender VARCHAR NOT NULL,
     hire_date DATE NOT NULL,
     PRIMARY KEY (emp_no)
);

--Create tables titles 
CREATE TABLE titles(
	emp_no INT Not Null,
	title varchar Not Null,
	from_date DATE Not Null,
	to_date DATE Not Null,
	FOREIGN KEY (emp_no) REFERENCES Employees (emp_no)
);

SELECT * from employees;

--Retrieve the emp_no, first_name, and last_name columns from the Employees table.
SELECT emp_no, first_name, last_name
INTO table_info_1 
FROM employees;

--Retrieve the title, from_date, and to_date columns from the Titles table.
SELECT emp_no, from_date, to_date
INTO table_info_2 
FROM titles;

--Join table_info_1 and table_info_2 on the emp_no and 
--Filter the data on the birth_date column between 1952 and 1955
SELECT e.emp_no,
e.first_name,
e.last_name,
ti.title,
ti.from_date,
ti.to_date
INTO retirement_titles
FROM employees as e
JOIN titles AS ti
ON (e.emp_no = ti.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no;

--Retrieve the employee number, first and last name, 
--and title columns from the Retirement Titles table
SELECT emp_no, first_name, last_name, title
FROM retirement_titles;

-- Use Dictinct with Orderby to retrieve the first occurrence of the employee number
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title
INTO unique_titles
FROM retirement_titles
ORDER BY emp_no, to_date DESC;

--retrieve the number of titles from the Unique Titles table
SELECT COUNT(title) AS "Total titles"
FROM unique_titles;

--Group the table by title, then sort the count column in descending order.
SELECT COUNT(title) "number of titles", title
INTO retiring_titles
FROM unique_titles 
GROUP BY title
ORDER BY "number of titles" DESC;


-------------------------------------------------------------------------------------
--Part 2: Identify employees who are eligible to participate in a mentorship program.
-------------------------------------------------------------------------------------
-- Create separtments table
CREATE TABLE departments (
     dept_no VARCHAR(4) NOT NULL,
     dept_name VARCHAR(40) NOT NULL,
     PRIMARY KEY (dept_no),
     UNIQUE (dept_name)
);

---- Create department employees table
CREATE TABLE dep_emp(
	emp_no INT Not Null,
	dept_no VARCHAR NOT NULL,
	from_date DATE Not Null,
	to_date DATE Not Null,
	FOREIGN KEY (emp_no) REFERENCES Employees (emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
);

--view the dep_emp
SELECT * FROM dept_emp;

--Retrieve the emp_no, first_name, last_name, and birth_date columns from the Employees table.
--Retrieve the from_date and to_date columns from the Department Employee table.
--Retrieve the title column from the Titles table
--Join employees, deparment employees and titles tables
--Filter the data on the to_date column to get current employees and birth_date between '1965-01-01' AND '1965-12-31' 
--Order the table by the employee number
SELECT DISTINCT ON (e.emp_no)
       e.emp_no,
       e.first_name,
       e.last_name,
       e.birth_date,
	   de.from_date,
	   de.to_date,
	   ti.title
INTO mentorship_eligibility 	   
FROM employees AS e
    INNER JOIN dep_emp AS de
        ON (e.emp_no = de.emp_no)
    INNER JOIN titles AS ti
        ON (e.emp_no = ti.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31') 
AND (de.to_date = '9999-01-01') 
ORDER BY e.emp_no;

--View the mentorship-eligibility table 
SELECT * FROM mentorship_eligibility; 

