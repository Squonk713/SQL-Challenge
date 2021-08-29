CREATE TABLE "titles" (
    "title_id" VARCHAR NOT NULL PRIMARY KEY,
    "title" VARCHAR NOT NULL
);

CREATE TABLE "employees" (
    "emp_no" INTEGER NOT NULL PRIMARY KEY,
    "emp_title_id" VARCHAR NOT NULL,
    "birth_date" VARCHAR,
    "first_name" VARCHAR NOT NULL,
    "last_name" VARCHAR NOT NULL,
    "sex" VARCHAR(1),
    "hire_date" VARCHAR,
    FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

CREATE TABLE "salaries" (
    "emp_no" INTEGER,
    "salary" FLOAT,
    FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE "departments" (
    "dept_no" VARCHAR NOT NULL PRIMARY KEY,
    "dept_name" VARCHAR NOT NULL
);

CREATE TABLE "dept_emp" (
    "emp_no" INTEGER NOT NULL,
    "dept_no" VARCHAR NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE "dept_manager" (
    "dept_no" VARCHAR,
    "emp_no" INTEGER,
    FOREIGN KEY(emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY(dept_no) REFERENCES departments(dept_no)
);