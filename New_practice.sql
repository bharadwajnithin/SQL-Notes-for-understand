create database Company;

use Company ;

# create a table department 
CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100)
);

# create a table employees 
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    department_id INT,
    manager_id INT,
    salary DECIMAL(10, 2),
    hire_date DATE,
    city VARCHAR(50),

    FOREIGN KEY (department_id)
        REFERENCES departments(department_id),

    FOREIGN KEY (manager_id)
        REFERENCES employees(employee_id)
);



