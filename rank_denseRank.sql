use data_analytics;
CREATE TABLE employee_table (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100),
    emp_address VARCHAR(200),
    emp_department VARCHAR(100),
    emp_salary DECIMAL(10,2),
    emp_bonus DECIMAL(10,2)
);

INSERT INTO employee_table
(emp_id, emp_name, emp_address, emp_department, emp_salary, emp_bonus)
VALUES
(1, 'Arjun Sharma', 'Kolkata', 'IT', 55000.00, 5000.00),
(2, 'Sneha Das', 'Howrah', 'HR', 48000.00, 4000.00),
(3, 'Rahul Roy', 'Durgapur', 'Finance', 62000.00, 6000.00),
(4, 'Priya Sen', 'Siliguri', 'Marketing', 51000.00, 4500.00),
(5, 'Amit Ghosh', 'Kolkata', 'IT', 72000.00, 7500.00),
(6, 'Riya Banerjee', 'Bardhaman', 'Sales', 45000.00, 3500.00),
(7, 'Sourav Das', 'Asansol', 'IT', 68000.00, 6500.00),
(8, 'Ananya Roy', 'Kolkata', 'HR', 52000.00, 5000.00),
(9, 'Vikram Singh', 'Delhi', 'Finance', 75000.00, 8000.00),
(10, 'Moumita Paul', 'Howrah', 'Marketing', 47000.00, 4000.00),
(11, 'Abhishek Mondal', 'Kolkata', 'IT', 61000.00, 5500.00),
(12, 'Puja Chatterjee', 'Siliguri', 'Sales', 49000.00, 4500.00),
(13, 'Rohit Kumar', 'Patna', 'Finance', 58000.00, 5000.00),
(14, 'Sohini Dutta', 'Kolkata', 'HR', 54000.00, 4800.00),
(15, 'Kunal Saha', 'Durgapur', 'IT', 80000.00, 9000.00),
(16, 'Tania Gupta', 'Delhi', 'Marketing', 63000.00, 6000.00),
(17, 'Debanjan Roy', 'Kolkata', 'Sales', 46000.00, 3500.00),
(18, 'Ishita Mukherjee', 'Howrah', 'Finance', 67000.00, 7000.00),
(19, 'Rajiv Sharma', 'Mumbai', 'IT', 85000.00, 10000.00),
(20, 'Nandini Das', 'Kolkata', 'HR', 50000.00, 4500.00),
(21, 'Sayan Ghosh', 'Asansol', 'Sales', 43000.00, 3000.00),
(22, 'Ritika Sen', 'Siliguri', 'Marketing', 56000.00, 5200.00),
(23, 'Anirban Paul', 'Kolkata', 'IT', 74000.00, 7000.00),
(24, 'Swati Singh', 'Patna', 'Finance', 69000.00, 6500.00),
(25, 'Ayan Chatterjee', 'Howrah', 'IT', 59000.00, 5000.00),
(26, 'Neha Agarwal', 'Delhi', 'HR', 57000.00, 5200.00),
(27, 'Soumyadeep Das', 'Kolkata', 'Sales', 48000.00, 4000.00),
(28, 'Pallavi Roy', 'Durgapur', 'Marketing', 53000.00, 4800.00),
(29, 'Rakesh Kumar', 'Ranchi', 'Finance', 64000.00, 6000.00),
(30, 'Madhumita Ghosh', 'Kolkata', 'IT', 77000.00, 8500.00),
(31, 'Sanjay Das', 'Howrah', 'Sales', 44000.00, 3200.00),
(32, 'Aishwarya Sen', 'Siliguri', 'HR', 55000.00, 5000.00),
(33, 'Indranil Roy', 'Kolkata', 'Finance', 71000.00, 7200.00),
(34, 'Payel Mukherjee', 'Bardhaman', 'Marketing', 50000.00, 4200.00),
(35, 'Tanmay Saha', 'Asansol', 'IT', 66000.00, 6200.00),
(36, 'Shreya Paul', 'Kolkata', 'Sales', 47000.00, 3800.00),
(37, 'Manish Agarwal', 'Mumbai', 'Finance', 82000.00, 9000.00),
(38, 'Rupsa Dutta', 'Howrah', 'HR', 51000.00, 4600.00),
(39, 'Akash Banerjee', 'Kolkata', 'IT', 73000.00, 6800.00),
(40, 'Diya Sharma', 'Delhi', 'Marketing', 60000.00, 5500.00);

select * from employee_table;

select avg(emp_salary) as avg_salary from employee_table;

select emp_department,avg(emp_salary) as avg_salary,
max(emp_salary) as max_salary,
min(emp_salary) as min_sal,
sum(emp_salary) as total_expanse,
count(emp_id) as number_of_emp
from employee_table group by emp_department;

CREATE TABLE department_summary (
    emp_department VARCHAR(100),
    avg_salary DECIMAL(12,2),
    max_salary DECIMAL(12,2),
    min_sal DECIMAL(12,2),
    total_expanse DECIMAL(15,2),
    number_of_emp INT
);

drop table department_summary;

insert into department_summary
select emp_department,avg(emp_salary) as avg_salary,
max(emp_salary) as max_salary,
min(emp_salary) as min_sal,
sum(emp_salary) as total_expanse,
count(emp_id) as number_of_emp
from employee_table group by emp_department;

select * from department_summary;
select * from employee_table;

CREATE TABLE student_scores (
    std_id INT,
    subject VARCHAR(50),
    score INT
);


INSERT INTO student_scores (std_id, subject, score)
VALUES
(1, 'Math', 50),
(2, 'English', 50),
(3, 'Science', 50),
(4, 'Computer', 50),
(5, 'Bengali', 50),

(6, 'Math', 60),
(7, 'English', 60),
(8, 'Science', 60),
(9, 'Computer', 60),
(10, 'Bengali', 60),

(11, 'Math', 70),
(12, 'English', 70),
(13, 'Science', 70),
(14, 'Computer', 70),
(15, 'Bengali', 70),

(16, 'Math', 80),
(17, 'English', 80),
(18, 'Science', 80),
(19, 'Computer', 80),
(20, 'Bengali', 80),

(21, 'Math', 90),
(22, 'English', 90),
(23, 'Science', 90),
(24, 'Computer', 90),
(25, 'Bengali', 90),

(26, 'Math', 100),
(27, 'English', 100),
(28, 'Science', 100),
(29, 'Computer', 100),
(30, 'Bengali', 100);

select * from student_scores;

select * ,rank() over (order by score desc) as rank_
from student_scores;

select *, dense_rank() over (order by score desc) as dense_rank_
from student_scores;

select * from 
(select * ,rank() over (order by score desc) as rank_,
 dense_rank() over (order by score desc) as dense_rank_
from student_scores) as new_dt where rank_<=6 limit 4;

select * from employee_table;

select * from 
(select *, rank() over (order by emp_salary desc)  salary_ordered
from employee_table) as new_dt;

select * from 
(select *, rank() over (order by emp_salary desc)  salary_ordered
from employee_table) as new_dt where salary_ordered=10 limit 1;

insert into employee_table
values(41,"Sumit Singh", "UP", "IT",69000.00,6500.00);

select *, rank() over(partition by emp_department order by emp_salary desc)as salary_ordered
from employee_table;


select *, rank() over(partition by emp_department order by emp_salary desc)as row_num_salary
from employee_table;





