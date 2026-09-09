#P1. Select All Employees
#Retrieve all columns from the employees table.

select * from employees ;

#P2. Select Specific Employee Columns
#Display each employee's first name, last name, and salary.

SELECT First_name,Last_name,salary from employees;

/* P3. Find Employees in Bengaluru
Find all employees whose city is Bengaluru.*/

select *from employees where city= "Bengaluru";


/* P4. Employees With Salary Above 60000
Find employees earning more than 60,000*/
select  * from employees where salary >60000;



/* P5. Employees Hired After 2023
Find employees hired after January 1, 2023.*/

select * from employees where hire_date>"2019-01-01";


/*P6. Sort Employees by Salary
Display employees from highest salary to lowest. */

select * from employees order by salary asc;




/* P7. Top 5 Highest Paid Employees
Return the five employees with the highest salaries.*/

select * from employees 
order by salary desc limit 5 ;


/* P8. Customers From India
Find all customers whose country is India.*/

select * from customers
where country="India" ;


/*P9 Products Above ₹1000
Find products whose price is greater than 1000. */


select * from products
where price >1000;



/* P10. Delivered Orders
Find all orders that have been delivered. */


select * from orders 
where status ="delivered";


/*  P11. Unique Customer Countries
List every unique country represented in the customers table*/

select distinct country from customers;



/* P12. Products in Electronics
Find all products in the Electronics category. */

select * from products where category="Electronics";








/*  P13. Salary Range
Find employees earning between 40,000 and 80,000.*/

select * from employees 
where salary between 40000 and 80000;



/* P14. Customers From Selected Cities
Find customers from Bengaluru or Mumbai. */

Select * from customers 
where city IN ('Bengaluru','Mumbai');



/* P15. Names Starting With A
Find customers whose names start with the letter A. */

select  customer_name from customers 
where customer_name like "a%";





/* P16. Products With Low Stock
Find products with fewer than 100 units in stock. */

select * from products
where stock_quantity<100;




/*  P17. Cancelled Orders
Find all pending orders and display their IDs and amounts.*/

select order_id,total_amount , status from orders 
where status ="pending";


 

/*  P18. Orders Above 5000
Find orders whose total amount exceeds 500-0.*/

select * from orders 
where total_amount >50000;



/* P19. Employees in Two Departments
Find employees belonging to department 1 or department 2. */

select employee_id,first_name,department_id 
from employees
where department_id  IN(1,2);

select * from employees;

/* P20. Employees Without Managers
Find employees who do not have a manager. */
select * from employees
where manager_id is null;



/* P21. Count All Employees
Find the total number of employees. */

select count(*) from employees ;




/* P22. Average Employee Salary
Calculate the average salary of all employees. */

select avg(salary) from employees ;


/* p23 Highest and Lowest Salary
Find the maximum and minimum employee salary. */

select max(salary) ,min(salary) from employees;

/*  p24 Total Order Revenue
Calculate the total value of all orders, excluding cancled orders. */

select sum(total_amount )
from orders
where status !="cancelled";
select * from orders ;
/*. P25. Count Customers by Country
Show how many customers belong to each country. */

select country ,count(*) 
from customers
group by country ;

select * from customers;

use CMP;



/* P26. Average Salary by Department
Calculate the average salary for each department.   */

select avg(salary),department_name
from employees
group by department_id;

/*  P27. Product Count by Category
Count products in every category.  */

select count(category),category from products
group by category;

/* P28 Departments With More Than 1 Employees
Find departments having more than five employees.   */

select count(*)as totalemployees ,department_id
from employees
group by department_id
having totalemployees >1;

/*  P29 Categorize Employees by Salary
Classify employees as High, Medium, or Low salary.  */


select first_name,salary,
CASE
	when salary >=80000 then 'High'
	when salary >=50000 then 'Mediam'
	else 'lɵw'
end as salary_level
from employees;




select * from employees ;




/*. Basic Employee Department Join
Display each employee's name and department name.*/

select e.first_name,e.last_name,d.department_name
from employees e
join departments d
on e.department_id=d.department_id






