use school_db;
-- Select the school_db database

CREATE TABLE Employee (
    EmpID INT PRIMARY KEY,      -- Employee ID as Primary Key
    EmpName VARCHAR(50),        -- Employee Name
    Department VARCHAR(50),     -- Department Name
    Salary INT,                 -- Employee Salary
    City VARCHAR(50)            -- Employee City
);

select * from employee;
-- Display all records from Employee table

INSERT INTO Employee VALUES
(1, 'Arjun', 'IT', 60000, 'Bangalore'),
(2, 'Rahul', 'IT', 75000, 'Bangalore'),
(3, 'Sneha', 'HR', 40000, 'Delhi'),
(4, 'Priya', 'HR', 45000, 'Delhi'),
(5, 'Karan', 'Sales', 30000, 'Mumbai'),
(6, 'Vikram', 'Sales', 35000, 'Mumbai'),
(7, 'Anjali', 'IT', 90000, 'Chennai'),
(8, 'Rohit', 'IT', 50000, 'Delhi'),
(9, 'Meera', 'HR', 70000, 'Bangalore'),
(10, 'Suresh', 'Sales', 25000, 'Delhi'),
(11, 'Kavya', 'IT', 80000, 'Bangalore'),
(12, 'Amit', 'Marketing', 55000, 'Mumbai'),
(13, 'Neha', 'Marketing', 65000, 'Bangalore'),
(14, 'Varun', 'Marketing', 45000, 'Delhi'),
(15, 'Divya', 'Sales', 85000, 'Bangalore');
-- Insert multiple employee records


#group by clause 

select Department, count(EmpName) as total_emp
from employee
group by Department;
-- Count number of employees in each department

select Department, count(EmpName) as total_emp
from employee
group by Department
having count(EmpName) > 4;
-- Show departments having more than 4 employees

select Department, max(salary) as salaryyy
from employee
group by Department;
-- Display maximum salary in each department

select Department, avg(salary) as salaryyy
from employee
where salary > 50000
group by Department;
-- Display average salary of employees earning more than 50000 in each department


#having 

select city, count(*) as nnnn
from employee
group by city
having count(EmpName) > 3;
-- Show cities having more than 3 employees

select department, count(EmpName) as total_emp_in_depart 
from employee
group by department
having count(EmpName) > 3;
-- Show departments having more than 3 employees


#display city where total salary > 200000

select city, sum(salary) as totoalcsalary
from employee 
group by city 
having totoalcsalary > 200000;
-- Show cities where total salary is greater than 200000


# Show departments where average salary is greater than 60000
select department, avg(salary) as vv
from employee
group by department
having vv > 60000;
-- Departments with average salary greater than 60000


# Display cities where minimum salary is less than 30000
select city, min(salary) as ss
from employee
group by city 
having ss < 30000;
-- Cities where minimum salary is less than 30000


# show dept having exactly 3 employees
select department, count(EmpName) as qq
from employee
group by department
having qq = 3;
-- Departments having exactly 3 employees


select * from employee;
-- Display all employee records

truncate employee;
-- Remove all records from employee table (structure remains)

update employee set department = "IA"
where EmpID = 1;
-- Update department of employee with EmpID = 1

START TRANSACTION;
-- Start a new transaction

delete from employee 
where EmpId = 1;
-- Delete employee with EmpID = 1

rollback;
-- Undo the delete operation if not committed
