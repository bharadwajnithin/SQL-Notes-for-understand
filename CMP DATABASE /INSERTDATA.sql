SET FOREIGN_KEY_CHECKS = 0;

DROP TABLE IF EXISTS employee_projects;
DROP TABLE IF EXISTS payments;
DROP TABLE IF EXISTS order_items;
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS projects;
DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS departments;

SET FOREIGN_KEY_CHECKS = 1;

INSERT INTO departments (department_id, department_name) VALUES
(1, 'Engineering'),
(2, 'Sales'),
(3, 'Marketing'),
(4, 'Human Resources'),
(5, 'Finance'),
(6, 'Operations'),
(7, 'Customer Support'),
(8, 'IT'),
(9, 'Research'),
(10, 'Legal');


INSERT INTO employees
(employee_id, first_name, last_name, email, department_id, manager_id, salary, hire_date, city)
VALUES
(1, 'Raj', 'Sharma', 'raj.sharma@company.com', 1, NULL, 95000.00, '2018-03-15', 'Bengaluru'),
(2, 'Priya', 'Nair', 'priya.nair@company.com', 2, NULL, 82000.00, '2019-06-10', 'Mumbai'),
(3, 'Arjun', 'Kumar', 'arjun.kumar@company.com', 1, 1, 72000.00, '2021-01-20', 'Bengaluru'),
(4, 'Sneha', 'Patel', 'sneha.patel@company.com', 3, NULL, 68000.00, '2020-08-12', 'Ahmedabad'),
(5, 'Vikram', 'Rao', 'vikram.rao@company.com', 5, NULL, 88000.00, '2017-11-05', 'Hyderabad'),
(6, 'Ananya', 'Iyer', 'ananya.iyer@company.com', 4, NULL, 65000.00, '2022-02-14', 'Chennai'),
(7, 'Rohan', 'Mehta', 'rohan.mehta@company.com', 2, 2, 58000.00, '2022-07-18', 'Mumbai'),
(8, 'Kavya', 'Menon', 'kavya.menon@company.com', 8, NULL, 78000.00, '2020-04-22', 'Bengaluru'),
(9, 'Aditya', 'Singh', 'aditya.singh@company.com', 6, NULL, 70000.00, '2019-09-30', 'Delhi'),
(10, 'Meera', 'Joshi', 'meera.joshi@company.com', 9, NULL, 91000.00, '2018-12-03', 'Pune');



INSERT INTO customers
(customer_id, customer_name, email, city, country, signup_date)
VALUES
(1, 'Amit Verma', 'amit.verma@gmail.com', 'Bengaluru', 'India', '2023-01-15'),
(2, 'Neha Kapoor', 'neha.kapoor@gmail.com', 'Mumbai', 'India', '2023-02-20'),
(3, 'Rahul Das', 'rahul.das@gmail.com', 'Kolkata', 'India', '2023-03-10'),
(4, 'Pooja Shah', 'pooja.shah@gmail.com', 'Ahmedabad', 'India', '2023-04-05'),
(5, 'Kiran Reddy', 'kiran.reddy@gmail.com', 'Hyderabad', 'India', '2023-05-18'),
(6, 'David Miller', 'david.miller@gmail.com', 'New York', 'USA', '2023-06-12'),
(7, 'Sarah Wilson', 'sarah.wilson@gmail.com', 'London', 'UK', '2023-07-22'),
(8, 'John Smith', 'john.smith@gmail.com', 'Toronto', 'Canada', '2023-08-14'),
(9, 'Lisa Brown', 'lisa.brown@gmail.com', 'Sydney', 'Australia', '2023-09-09'),
(10, 'Daniel Lee', 'daniel.lee@gmail.com', 'Singapore', 'Singapore', '2023-10-25');


INSERT INTO products
(product_id, product_name, category, price, stock_quantity)
VALUES
(1, 'Laptop Pro 15', 'Electronics', 85000.00, 25),
(2, 'Wireless Mouse', 'Accessories', 1200.00, 150),
(3, 'Mechanical Keyboard', 'Accessories', 4500.00, 80),
(4, 'Smartphone X', 'Electronics', 55000.00, 40),
(5, 'USB-C Hub', 'Accessories', 2500.00, 100),
(6, 'Monitor 27 Inch', 'Electronics', 22000.00, 35),
(7, 'Office Chair', 'Furniture', 15000.00, 20),
(8, 'Desk Lamp', 'Furniture', 3000.00, 60),
(9, 'External SSD 1TB', 'Storage', 8500.00, 50),
(10, 'Webcam HD', 'Accessories', 5000.00, 70);



INSERT INTO orders
(order_id, customer_id, employee_id, order_date, status, total_amount)
VALUES
(1, 1, 2, '2024-01-10', 'Delivered', 86200.00),
(2, 2, 7, '2024-01-15', 'Shipped', 57000.00),
(3, 3, 2, '2024-02-05', 'Delivered', 7000.00),
(4, 4, 7, '2024-02-18', 'Pending', 22000.00),
(5, 5, 2, '2024-03-02', 'Delivered', 25500.00),
(6, 6, 7, '2024-03-15', 'Cancelled', 15000.00),
(7, 7, 2, '2024-04-01', 'Delivered', 11000.00),
(8, 8, 7, '2024-04-12', 'Shipped', 30000.00),
(9, 9, 2, '2024-05-05', 'Delivered', 13500.00),
(10, 10, 7, '2024-05-20', 'Pending', 5000.00);

INSERT INTO order_items
(order_item_id, order_id, product_id, quantity, unit_price)
VALUES
(1, 1, 1, 1, 85000.00),
(2, 1, 2, 1, 1200.00),
(3, 2, 4, 1, 55000.00),
(4, 2, 2, 2, 1200.00),
(5, 3, 3, 1, 4500.00),
(6, 3, 5, 1, 2500.00),
(7, 4, 6, 1, 22000.00),
(8, 5, 7, 1, 15000.00),
(9, 5, 8, 2, 3000.00),
(10, 6, 7, 1, 15000.00);


INSERT INTO order_items
(order_item_id, order_id, product_id, quantity, unit_price)
VALUES
(1, 1, 1, 1, 85000.00),
(2, 1, 2, 1, 1200.00),
(3, 2, 4, 1, 55000.00),
(4, 2, 2, 2, 1200.00),
(5, 3, 3, 1, 4500.00),
(6, 3, 5, 1, 2500.00),
(7, 4, 6, 1, 22000.00),
(8, 5, 7, 1, 15000.00),
(9, 5, 8, 2, 3000.00),
(10, 6, 7, 1, 15000.00);





INSERT INTO payments
(payment_id, order_id, payment_date, amount, payment_method, payment_status)
VALUES
(1, 1, '2024-01-10', 86200.00, 'Card', 'Success'),
(2, 2, '2024-01-15', 57400.00, 'UPI', 'Success'),
(3, 3, '2024-02-05', 7000.00, 'Card', 'Success'),
(4, 4, '2024-02-18', 22000.00, 'UPI', 'Success'),
(5, 5, '2024-03-02', 25500.00, 'Card', 'Success'),
(6, 6, '2024-03-15', 15000.00, 'Cash', 'Refunded'),
(7, 7, '2024-04-01', 11000.00, 'UPI', 'Success'),
(8, 8, '2024-04-12', 30000.00, 'Card', 'Success'),
(9, 9, '2024-05-05', 13500.00, 'UPI', 'Success'),
(10, 10, '2024-05-20', 5000.00, 'Card', 'Failed');


INSERT INTO payments
(payment_id, order_id, payment_date, amount, payment_method, payment_status)
VALUES
(1, 1, '2024-01-10', 86200.00, 'Card', 'Success'),
(2, 2, '2024-01-15', 57400.00, 'UPI', 'Success'),
(3, 3, '2024-02-05', 7000.00, 'Card', 'Success'),
(4, 4, '2024-02-18', 22000.00, 'UPI', 'Success'),
(5, 5, '2024-03-02', 25500.00, 'Card', 'Success'),
(6, 6, '2024-03-15', 15000.00, 'Cash', 'Refunded'),
(7, 7, '2024-04-01', 11000.00, 'UPI', 'Success'),
(8, 8, '2024-04-12', 30000.00, 'Card', 'Success'),
(9, 9, '2024-05-05', 13500.00, 'UPI', 'Success'),
(10, 10, '2024-05-20', 5000.00, 'Card', 'Failed');


INSERT INTO projects
(project_id, project_name, start_date, end_date, budget)
VALUES
(1, 'Website Redesign', '2024-01-01', '2024-03-31', 150000.00),
(2, 'Mobile App', '2024-02-01', '2024-06-30', 300000.00),
(3, 'CRM Upgrade', '2024-03-15', NULL, 250000.00),
(4, 'Cloud Migration', '2024-01-15', '2024-05-31', 400000.00),
(5, 'Data Analytics', '2024-04-01', NULL, 200000.00),
(6, 'Security Audit', '2024-05-01', '2024-07-31', 100000.00),
(7, 'Marketing Campaign', '2024-02-15', '2024-04-15', 120000.00),
(8, 'Customer Portal', '2024-03-01', '2024-08-31', 275000.00),
(9, 'AI Research', '2024-06-01', NULL, 500000.00),
(10, 'Employee Training', '2024-01-10', '2024-02-28', 75000.00);


INSERT INTO employee_projects
(employee_id, project_id, hours_worked)
VALUES
(1, 1, 120.50),
(3, 1, 180.00),
(3, 2, 220.75),
(8, 2, 150.00),
(5, 3, 95.50),
(9, 4, 210.00),
(4, 7, 175.25),
(10, 9, 300.00),
(6, 10, 85.00),
(2, 7, 140.50);



