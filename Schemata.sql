
CREATE TABLE employees (
    emp_no int NOT NULL,
    emp_title_id VARCHAR(20)  NOT NULL,
    birth_date date   NOT NULL,
    first_name VARCHAR(50)   NOT NULL,
    last_name VARCHAR(50)   NOT NULL,
    sex VARCHAR(1)   NOT NULL,
    hire_date date   NOT NULL,
    FOREIGN KEY (emp_title_id) REFERENCES titles (title_id),
    PRIMARY KEY (emp_no)
);

CREATE TABLE dept_emp (
    emp_no int   NOT NULL,
    dept_no VARCHAR(5)  NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
    PRIMARY KEY (emp_no,dept_no)
);

CREATE TABLE departments (
    dept_no VARCHAR(5)   NOT NULL,
    dept_name VARCHAR(30)   NOT NULL,
    PRIMARY KEY (dept_no)
);

CREATE TABLE dept_manager (
    dept_no VARCHAR(5)   NOT NULL,
    emp_no int   NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
    PRIMARY KEY (dept_no,emp_no)
);

CREATE TABLE salaries (
    emp_no int   NOT NULL,
    salary int   NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
    PRIMARY KEY (emp_no)
);

CREATE TABLE titles (
    title_id  VARCHAR(6)  NOT NULL,
    title VARCHAR(25)   NOT NULL,
    
    PRIMARY KEY (title_id, title )
);


