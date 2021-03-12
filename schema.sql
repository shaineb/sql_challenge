DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS salaries ;
DROP TABLE IF EXISTS titles ;



CREATE TABLE departments(
dept_emp VARCHAR NOT NULL,
dept_name VARCHAR NOT NULL    
);


CREATE  TABLE dept_emp(
    emp_no INT NOT NULL,
    dept_no VARCHAR NOT NULL
);

CREATE  TABLE dept_manager(
    dept_no VARCHAR NOT NULL,
    emp_no INT NOT NULL

);


CREATE  TABLE employees(
    emp_no INT NOT NULL,
    emp_title_id VARCHAR NOT NULL,
    birth_date VARCHAR NOT NULL,
    first_name VARCHAR NOT NULL,
    last_name VARCHAR NOT NULL,
    sex VARCHAR NOT NULL,
    hire_date DATE
);

CREATE  TABLE salaries(
    emp_no INT NOT NULL,
    salary INT NOT NULL
);


CREATE  TABLE titles(
    title_id VARCHAR NOT NULL,
    title VARCHAR NOT NULL
);