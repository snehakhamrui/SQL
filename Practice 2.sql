USE SQL_PRACTICE;

create table Orders
(OrderID int primary key not null,
CustomerID int not null,
OrderDate date,
TotalAmount decimal(10,3));

INSERT INTO Orders
(OrderID, CustomerID, OrderDate, TotalAmount)
VALUES
(1, 1001, '2026-01-05', 1250.500),
(2, 1002, '2026-01-05', 2450.750),
(3, 1003, '2026-01-08', 850.250),
(4, 1001, '2026-01-10', 3200.000),
(5, 1004, '2026-01-10', 1750.500),
(6, 1002, '2026-01-12', 4200.750),
(7, 1005, '2026-01-15', 950.000),
(8, 1003, '2026-01-15', 2800.250),
(9, 1006, '2026-01-18', 3650.500),
(10, 1001, '2026-01-20', 1500.750),
(11, 1004, '2026-01-20', 5200.000),
(12, 1005, '2026-01-22', 2100.500),
(13, 1002, '2026-01-25', 3400.250),
(14, 1006, '2026-01-25', 1800.750),
(15, 1003, '2026-01-28', 4500.500);

select * from Orders;

select * from Orders where OrderID=5;

select count(CustomerID) as total_order from orders;

select CustomerID, sum(TotalAmount) as total_pay
 from orders
 group by CustomerID;

select CustomerID, sum(TotalAmount) as total_pay
 from orders
 group by CustomerID
 order by total_pay DESC;

select CustomerID, sum(TotalAmount) as total_pay
 from orders
 group by CustomerID
 HAVING total_pay>5500
 order by total_pay DESC
 LIMIT 2;
 
--SALES TABLE--

CREATE TABLE SALES
(SALEID INT PRIMARY KEY NOT NULL,
PRODUCTID INT NOT NULL,
SALEDATE DATE NOT NULL,
SALEAMOUNT DECIMAL(10,2) NOT NULL);

INSERT INTO SALES
(SALEID, PRODUCTID, SALEDATE, SALEAMOUNT)
VALUES
(1, 101, '2026-01-05', 1250.50),
(2, 102, '2026-01-05', 2450.75),
(3, 103, '2026-01-08', 850.25),
(4, 101, '2026-01-10', 3200.00),
(5, 104, '2026-01-10', 1750.50),
(6, 102, '2026-01-12', 4200.75),
(7, 105, '2026-01-15', 950.00),
(8, 103, '2026-01-15', 2800.25),
(9, 106, '2026-01-18', 3650.50),
(10, 101, '2026-01-20', 1500.75),

(11, 104, '2026-01-20', 5200.00),
(12, 105, '2026-01-22', 2100.50),
(13, 102, '2026-01-25', 3400.25),
(14, 106, '2026-01-25', 1800.75),
(15, 103, '2026-01-28', 4500.50),
(16, 107, '2026-02-02', 2750.00),
(17, 101, '2026-02-02', 1950.50),
(18, 108, '2026-02-05', 6300.75),
(19, 104, '2026-02-08', 2850.25),
(20, 102, '2026-02-08', 4100.00),

(21, 105, '2026-02-10', 1350.50),
(22, 107, '2026-02-12', 5200.75),
(23, 103, '2026-02-15', 3250.00),
(24, 108, '2026-02-15', 7100.50),
(25, 106, '2026-02-18', 2400.25),
(26, 101, '2026-02-20', 3850.75),
(27, 104, '2026-02-22', 1950.00),
(28, 107, '2026-02-25', 4650.50),
(29, 108, '2026-02-25', 5500.25),
(30, 102, '2026-02-28', 2900.75);
 
select * from SALES;

select SALEAMOUNT 
from sales 
where SALEDATE between '2026-01-05' and '2026-01-10';

select sum(SALEAMOUNT) as total_sal_with_range 
from sales 
where SALEDATE between '2026-01-05' and '2026-01-10';

--EMPLOYEE TABLE--

CREATE TABLE EMPLOYEE
(EMPLOYEEID INT PRIMARY KEY NOT NULL,
FIRSTNAME VARCHAR(50) NOT NULL,
LASTNAME VARCHAR(50) NOT NULL,
BIRTHDATE DATE,
SALARY DECIMAL(10,2));

INSERT INTO EMPLOYEE
(EMPLOYEEID, FIRSTNAME, LASTNAME, BIRTHDATE, SALARY)
VALUES
(1, 'Arjun', 'Sharma', '1998-03-15', 45000.00),
(2, 'Priya', 'Das', '1997-07-22', 52000.00),
(3, 'Rahul', 'Roy', '1999-01-10', 48000.00),
(4, 'Sneha', 'Ghosh', '1996-11-05', 60000.00),
(5, 'Amit', 'Kumar', '1998-04-18', 42000.00),
(6, 'Riya', 'Sen', '2000-06-30', 55000.00),
(7, 'Sayan', 'Banerjee', '1995-12-12', 63000.00),
(8, 'Ananya', 'Roy', '1999-09-25', 47000.00),
(9, 'Abhishek', 'Paul', '1997-03-08', 58000.00),
(10, 'Tania', 'Chakraborty', '2001-10-14', 41000.00),
(11, 'Rohan', 'Dutta', '1996-05-09', 67000.00),
(12, 'Puja', 'Saha', '1998-12-21', 50000.00),
(13, 'Debjit', 'Bose', '1995-10-03', 72000.00),
(14, 'Ishita', 'Mukherjee', '2000-02-26', 53000.00),
(15, 'Kunal', 'Ghosh', '1997-06-17', 46000.00);

select * from EMPLOYEE;
 
 select * from EMPLOYEE
 order by LASTNAME;
 
  
 select * from EMPLOYEE
 order by BIRTHDATE;
 
select * from EMPLOYEE 
where BIRTHDATE not in (1995-10-03,1999-09-25);

SELECT *
FROM EMPLOYEE
WHERE  BIRTHDATE not between '1995-10-03' and '1999-12-31';

SELECT *
FROM EMPLOYEE
WHERE  BIRTHDATE > '1998-12-31';


SELECT *
FROM EMPLOYEE
WHERE  BIRTHDATE < '2000-01-01';

select FIRSTNAME,LASTNAME,SALARY 
from employee
order by salary desc;


