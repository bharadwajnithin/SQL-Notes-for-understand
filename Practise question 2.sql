use prafhgj;

CREATE TABLE Employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(50),
    salary INT,
    city VARCHAR(50)
);

INSERT INTO Employees VALUES
(1, 'Nithin', 'IT', 60000, 'Mysore'),
(2, 'Ravi', 'HR', 40000, 'Bangalore'),
(3, 'Sneha', 'IT', 75000, 'Mysore'),
(4, 'Amit', 'Finance', 50000, 'Delhi'),
(5, 'Priya', 'HR', 42000, 'Bangalore'),
(6, 'Kiran', 'IT', 68000, 'Mysore'),
(7, 'Rahul', 'Finance', 52000, 'Delhi'),
(8, 'Anu', 'IT', 72000, 'Bangalore'),
(9, 'Meena', 'HR', 39000, 'Chennai'),
(10, 'Arjun', 'Finance', 55000, 'Delhi');

#1.Find total salary of each department.
select department, sum(salary)
from employees
group by department;

#2.Find average salary of each department.
select department, avg(salary)
from employees
group by department;

#3.Count number of employees in each department.
select department, count(emp_name)
from employees
group by department;

#4.Find maximum salary in each department.
select department, max(salary)
from employees
group by department;

#5.Find minimum salary in each city.
select city, min(salary)
from employees
group by city;

#6.Find total salary of employees in each city.
select city, sum(salary)
from employees
group by city;

#7.Find departments where average salary is greater than 60,000.
select department, avg(salary) as aa
from employees
group by department
having aa > 60000;

#8.Count employees in each city.
select city, count(emp_name)
from employees
group by city;

#9.Find departments having more than 2 employees.
select department, count(emp_name) as aa
from employees
group by department
having aa > 2;

#10.Find cities where total salary is greater than 1,50,000.
select city, sum(salary) as sa
from employees
group by city
having sa > 150000;

#11.Find departments where maximum salary is more than 70,000
select department, max(salary)
from employees
group by department
having max(salary) > 70000;

#12.Find departments where minimum salary is less than 40,000.
select department, min(salary)
from employees
group by department
having min(salary) < 40000;

#13.Find city-wise average salary, but show only cities where average salary > 50,000.
select city
from employees
group by city
having avg(salary) > 50000;

#14.Find department-wise employee count, but show only departments having salary sum > 1,50,000.
select department, count(emp_name)
from employees
group by department
having sum(salary) > 150000;

#15.Find departments where number of employees is between 2 and 4.
select department, count(emp_name) as aa
from employees
group by department
having aa between 2 and 4;