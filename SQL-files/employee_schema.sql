CREATE TABLE departments(
	dept_no VARCHAR NOT NULL PRIMARY KEY,
	dept_name varchar NOT NULL
);

CREATE TABLE dept_emp(
	emp_no INT PRIMARY KEY,
	dept_no VARCHAR NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);


CREATE TABLE dept_manager(
	dept_no VARCHAR NOT NULL,
	emp_no INT,
FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
FOREIGN KEY (emp_no) REFERENCES dept_emp(emp_no)
);

CREATE TABLE employees(
	emp_no INT,
	emp_title_id VARCHAR NOT NULL PRIMARY KEY,
	birth_date DATE,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	sex VARCHAR NOT NULL,
	hire_date DATE,
	FOREIGN KEY (emp_no) REFERENCES dept_emp(emp_no)
);


CREATE TABLE salaries(
	emp_no INT,
	salary INT,
	FOREIGN KEY (emp_no) REFERENCES dept_emp(emp_no)
);


CREATE TABLE titles(
	title_id VARCHAR NOT NULL,
	title VARCHAR NOT NULL,
	FOREIGN KEY (title_id) REFERENCES employees(emp_title_id)
);
