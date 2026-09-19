use data_analytics;
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department_id INT
);

INSERT INTO employees (employee_id, first_name, last_name, department_id)
VALUES (1, 'John', 'Doe', 101);
INSERT INTO employees (employee_id, first_name, last_name, department_id)
VALUES (2, 'Jane', 'Smith', 102);
INSERT INTO employees (employee_id, first_name, last_name, department_id)
VALUES (3, 'Robert', 'Johnson', 101);
INSERT INTO employees (employee_id, first_name, last_name, department_id)
VALUES (4, 'Sarah', 'Brown', 103);
INSERT INTO employees (employee_id, first_name, last_name, department_id)
VALUES (5, 'David', 'Lee', 102);

select * from employees;

CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);
INSERT INTO departments (department_id, department_name)
VALUES (101, 'Sales');
INSERT INTO departments (department_id, department_name)
VALUES (102, 'Marketing');
INSERT INTO departments (department_id, department_name)
VALUES (103, 'Finance');
INSERT INTO departments (department_id, department_name)
VALUES (104, 'Human Resources');
INSERT INTO departments (department_id, department_name)
VALUES (105, 'Engineering');

select * from employees;
select * from departments;

select first_name,employees.department_id,department_name from employees 
inner join departments 
on employees.department_id =departments.department_id;

select * from employees 
left join departments 
on employees.department_id =departments.department_id;

select * from employees 
right join departments 
on employees.department_id =departments.department_id;

select * from  departments 
left join employees
on employees.department_id =departments.department_id;

select * from  departments 
right join employees
on employees.department_id =departments.department_id;

drop table orders;
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10, 2)
);

INSERT INTO orders (order_id, customer_id, order_date, total_amount) VALUES
(1001, 501, '2026-01-05', 1250.00),
(1002, 502, '2026-01-05', 875.50),
(1003, 501, '2026-01-10', 2499.00),
(1004, 503, '2026-01-10', 650.75),
(1005, 504, '2026-01-12', 3200.00),
(1006, 502, '2026-01-15', 1499.99),
(1007, 505, '2026-01-15', 799.00),
(1008, 501, '2026-01-18', 4500.50),
(1009, 506, '2026-01-20', 999.00),
(1010, 504, '2026-01-20', 1750.25),

(1011, 507, '2026-02-02', 2250.00),
(1012, 502, '2026-02-02', 599.50),
(1013, 503, '2026-02-05', 3899.00),
(1014, 501, '2026-02-05', 1200.75),
(1015, 505, '2026-02-08', 2750.00),
(1016, 508, '2026-02-10', 950.00),
(1017, 504, '2026-02-10', 5200.99),
(1018, 502, '2026-02-14', 1450.00),
(1019, 507, '2026-02-14', 680.50),
(1020, 501, '2026-02-18', 3100.25),

(1021, 509, '2026-03-01', 899.00),
(1022, 503, '2026-03-01', 1999.50),
(1023, 505, '2026-03-04', 750.00),
(1024, 504, '2026-03-04', 4250.00),
(1025, 501, '2026-03-08', 1350.75),
(1026, 508, '2026-03-08', 2899.99),
(1027, 502, '2026-03-12', 550.00),
(1028, 507, '2026-03-12', 3650.50),
(1029, 503, '2026-03-15', 1100.00),
(1030, 501, '2026-03-15', 4999.25);

select * from orders;

select customer_id ,sum(total_amount) as total_bill
from orders
group by customer_id;

select order_date ,sum(total_amount) as total_value_date_wise
from orders
group by order_date;

select customer_id ,sum(total_amount) as total_bill
from orders
group by customer_id
having total_bill>5000;

select customer_id ,sum(total_amount) as total_bill
from orders 
where order_date between'2026-01-01' and '2026-03-10' 
group by customer_id
having total_bill>5000
order by total_bill DESC
limit 2;

