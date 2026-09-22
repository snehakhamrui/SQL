use data_analytics;

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price_per_unit DECIMAL(10,2)
);

CREATE TABLE sales (
    sale_id INT PRIMARY KEY,
    product_id INT,
    quantity INT,
    sale_date DATE,
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

INSERT INTO products VALUES
(101, 'Rice', 'Grocery', 50),
(102, 'Toothpaste', 'Toiletries', 30),
(103, 'Shampoo', 'Toiletries', 120),
(104, 'Sugar', 'Grocery', 40);

INSERT INTO sales VALUES
(1, 101, 10, '2025-06-01'),
(2, 102, 5, '2025-06-01'),
(3, 101, 15, '2025-06-02'),
(4, 103, 2, '2025-06-02'),
(5, 104, 20, '2025-06-03');

SELECT * FROM PRODUCTS;

SELECT * FROM SALES;

with cte1 as
(select
 s.sale_date,
p.product_name,
s.quantity,
p.price_per_unit,
(s.quantity*p.price_per_unit) as total_revenue
from sales s
join products p
on s.product_id=p.product_id) select * from cte1;

with cte1 as
(select
 s.sale_date,
p.product_name,
s.quantity,
p.price_per_unit,
(s.quantity*p.price_per_unit) as total_revenue
from sales s
join products p
on s.product_id=p.product_id),
cte2 as (select  product_name,sum(total_revenue) as summary_revenue
from cte1 group by product_name) select * from cte2;

with cte1 as
(select
 s.sale_date,
p.product_name,
s.quantity,
p.price_per_unit,
(s.quantity*p.price_per_unit) as total_revenue
from sales s
join products p
on s.product_id=p.product_id),
cte2 as (select  product_name,sum(total_revenue) as summary_revenue
from cte1 group by product_name),
cte3 as (select * from cte2 where summary_revenue>500) select * from cte3;

SELECT * FROM PRODUCTS;

SELECT * FROM SALES;




