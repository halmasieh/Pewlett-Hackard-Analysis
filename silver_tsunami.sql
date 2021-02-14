-------------------------------------------------------------------------
--Written Analysis-Summary
--------------------------------------------------------------------------
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
--Create a table called silver tsunami and join employees in title
SELECT Distinct on (e.emp_no)
       e.emp_no,
       e.first_name,
       e.last_name,
       e.birth_date,
	   ti.title
INTO silver_tsunami	   
FROM employees AS e
    INNER JOIN titles AS ti
        ON (e.emp_no = ti.emp_no);
		
--Filter the data on bith_date to get the employees over 65 years   
--Select * from silver_tsunami
--where birth_date <= '1956-01-01';

--Drop table if exists
DROP TABLE IF EXISTS over_sixtyFive;
DROP TABLE IF EXISTS under_sixtyFive;
DROP TABLE IF EXISTS totalCountByTitle;

--Count the total number of employees by title 
Select Count(title) as total_count, title
into totalCountByTitle
from silver_tsunami
group by title;

--Count the total number of employees equal or older than 65 years old by title 
Select Count(title) as over65_count, title
into over_sixtyfive
from silver_tsunami
where birth_date <= '1956-01-01'
group by title;

--Count the total number of employees younger than 65 years old by title 
Select Count(title) as under65_count, title
into under_sixtyfive
from silver_tsunami
where birth_date > '1956-01-01'
group by title;

--Join total, over_sixtyfive and under_sixtyfive  
select total.title, total_count, over65_count, under65_count
from totalCountByTitle as total
inner join over_sixtyfive as o
	ON (total.title = o.title)
inner join under_sixtyfive as u
	ON (total.title = u.title);

-- Count the number of employees participated in mentorship eligibility 
Select Count(title) as mentorship_count, title
into mentorship_eligibility_count 
from mentorship_eligibility
group by title;

--View the mentorship_eligibility_count
Select * From mentorship_eligibility_count;


