--Creating table for PH-EmployeeDB
Create table Departments(
	dept_no varchar(4) Not NULL,
	dept_name varchar(30) Not NULL,
	primary key (dept_no),
	unique (dept_name)
);
Create table Employees (
	 emp_no INT NOT NULL,
     birth_date DATE NOT NULL,
     first_name VARCHAR NOT NULL,
     last_name VARCHAR NOT NULL,
     gender VARCHAR NOT NULL,
     hire_date DATE NOT NULL,
     PRIMARY KEY (emp_no)
);
Create Table Dept_Manager(
	emp_no int not null,
	dept_no varchar not null,
	from_date date not null,
	to_date date not null,
    foreign key (emp_no) references Employees (emp_no),
    foreign key (dept_no) references Departments (dept_no),
    primary key (emp_no,dept_no)
);
Create table Salaries(
	emp_no int not null,
	salary int not null,
	from_date date not null,
	to_date date not null,
	foreign key (emp_no) references Employees (emp_no),
	primary key (emp_no)
);

Create table Dep_Emp(
	dept_no varchar not null,
	emp_no int not null,
	from_date date not null,
	to_date date not null,
	foreign key (emp_no) references Employees (emp_no),
	foreign key (dept_no) references Departments (dept_no),
    primary key (emp_no,dept_no)
);
Create table Titles(
	emp_no int not null,
	title int not null,
	from_date date not null,
	to_date date not null,
	foreign key (emp_no) references Employees (emp_no),
	primary key (emp_no)
);
SELECT * FROM departments;
