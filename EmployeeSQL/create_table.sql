CREATE TABLE titles(
	title_id varchar(10) PRIMARY KEY NOT NULL,
	title varchar(30)
);
SELECT * FROM titles


CREATE TABLE salaries(
	emp_no integer PRIMARY KEY NOT NULL,
	salary integer
)
SELECT * FROM salaries


CREATE TABLE employees(
	emp_no integer PRIMARY KEY NOT NULL,
	emp_title_id varchar(10), 
	birth_date date NOT NULL,
	first_name varchar(30),
	las_name varchar(30),
	sex varchar(15),
	hire_date date,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);
SELECT * FROM employees


CREATE TABLE departments(
	dept_no varchar(10) PRIMARY KEY NOT NULL,
	dept_name varchar(30)
);
SELECT * FROM departments


CREATE TABLE dept_manager(
	dept_no varchar(10),
	emp_no integer,
	PRIMARY KEY (dept_no,emp_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
)
SELECT * FROM dept_manager

CREATE TABLE dept_emp(
	emp_no integer,
	dept_no varchar(10),
	PRIMARY KEY (emp_no,dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
)
SELECT * FROM dept_emp