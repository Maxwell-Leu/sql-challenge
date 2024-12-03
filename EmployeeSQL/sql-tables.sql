CREATE TABLE departments (
	dept_no VARCHAR(4) PRIMARY KEY,
	dept_name VARCHAR(30) NOT NULL
);

CREATE TABLE titles(
	title_id VARCHAR(5) PRIMARY KEY,
	title VARCHAR(30)
);

CREATE TABLE employees(
	emp_no INTEGER PRIMARY KEY,
	emp_title_id VARCHAR(5),
	birth_date VARCHAR(10),
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	sex CHAR(1),
	hire_date VARCHAR(10),
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

CREATE TABLE salary (
	emp_no INTEGER,
	salary INTEGER,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE dept_manager(
	dept_no VARCHAR(4),
	emp_no INTEGER,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE dept_emp(
	emp_no INTEGER,
	dept_no VARCHAR(4),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);






