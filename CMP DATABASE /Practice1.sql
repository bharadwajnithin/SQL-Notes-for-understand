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




/*. p 30 Basic Employee Department Join
Display each employee's name and department name.*/

select e.first_name,e.last_name,d.department_name
from employees e
join departments d
on e.department_id=d.department_id;




/*
     P31. Customer Order List
Display customer names along with their order IDs and order amounts.*/

use CMP;

select * from customers;


select * from orders;

select c.customer_name,o.order_id,o.total_amount
from customers c
join orders o
on c.customer_id=o.customer_id;

/*. P32. Employees With Department Names
Show employee name, department name, and salary.*/

select * from employees;
select * from departments;

select e.first_name,e.last_name,d.department_name,e.salary
from employees e
join departments d
on e.department_id=d.department_id;


/*. P33. Customers With No Orders
Find customers who  an order is  delivered. */


select * from customers;
select * from orders ;

select c.customer_id,c.customer_name 
from customers c
left join orders o
on c.customer_id = o.customer_id
where  status ="delivered";





/*.P34. Orders With Customer Details
Show order ID, customer name, order date, and status.  */

select o.order_id,c.customer_name,o.order_date,o.status
from customers c
join orders o
on c.customer_id=o.customer_id;

show tables;

select * from products;
select * from orders;


/*.  P #35 Products Never Ordered. Find products that have never
appeared in order_items. */



select * from order_items;

select p.product_name,o.order_id
from   products p 
left join order_items o
on p.product_id=o.product_id
where o.product_id is null;



/*p 36.Total Spending Per Customer.
 Calculate total order value for every customer.  */
 select 
	c.customer_name,
    c.customer_id,
    sum(total_amount)as ts
from customers c
left join orders o
	on c.customer_id=o.customer_id
group by c.customer_id,c.customer_name
order by ts;
    
    
    



/*. p 37 Customers Spending More Than 10000. 
\Find customers whose total order value exceeds 10,000.*/

 select 
	c.customer_name,    
    sum(total_amount)as ts
from customers c
left join orders o
	on c.customer_id=o.customer_id
group by c.customer_name
having  ts >10000;



/*. p 38. 38. Average Order Value by Customer
Find the average order amount for each customer.  */

SELECT
customer_id,
AVG(total_amount) AS average_order_value
FROM orders
GROUP BY customer_id;




/*.  P 39. Revenue by Product
Calculate revenue generated by each product using order_items. */

select * from order_items;
select * from products ;

select p.product_name, o.product_id,sum(o.quantity*o.Unit_price) as rev
from order_items o
join products p
on p.product_id= o.product_id
group by product_id;



SELECT
p.product_id,
p.product_name,
SUM(oi.quantity * oi.unit_price) AS revenue
FROM products p
JOIN order_items oi
ON p.product_id = oi.product_id
JOIN orders o
ON oi.order_id = o.order_id
WHERE o.status > 'Cancelled'
GROUP BY p.product_id, p.product_name
ORDER BY revenue DESC;



/*.P40. Best-Selling Products by Quantity
Find the five products with the highest total quantity sold.  */


select * from order_items;
select * from products ;

select p.product_name , o.product_id ,sum(o.quantity) as v
from order_items o 
join products p 
on p.product_id=o.product_id
group by o.product_id
order by v desc  limit 5
;

/*. */


/*. */



