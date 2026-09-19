CREATE DATABASE SQL_PRACTICE;
USE SQL_PRACTICE;

CREATE TABLE STUDENTS
(ROLL_NO INT PRIMARY KEY NOT NULL,
STD_NAME VARCHAR(50) NOT NULL,
AGE VARCHAR(20) NOT NULL,
DOB DATE,
CLASS VARCHAR(50));

DROP TABLE STUDENTS;

INSERT INTO STUDENTS
(ROLL_NO, STD_NAME, AGE, DOB, CLASS)
VALUES
(1, 'Aarav Sharma', '18', '2008-02-15', '12'),
(2, 'Priya Das', '17', '2008-07-22', '12'),
(3, 'Rahul Roy', '16', '2009-01-10', '11'),
(4, 'Sneha Ghosh', '17', '2008-11-05', '12'),
(5, 'Arjun Kumar', '16', '2009-04-18', '11'),
(6, 'Riya Sen', '15', '2010-06-30', '10'),
(7, 'Sayan Banerjee', '18', '2007-12-12', '12'),
(8, 'Ananya Roy', '17', '2008-09-25', '11'),
(9, 'Amit Das', '15', '2010-03-08', '10'),
(10, 'Moumita Saha', '16', '2009-08-19', '11'),
(11, 'Abhishek Paul', '18', '2008-01-27', '12'),
(12, 'Tania Chakraborty', '15', '2010-10-14', '10'),
(13, 'Rohan Dutta', '17', '2008-05-09', '11'),
(14, 'Puja Ghosh', '16', '2009-12-21', '11'),
(15, 'Debjit Bose', '18', '2007-10-03', '12'),
(16, 'Ishita Roy', '15', '2010-02-26', '10'),
(17, 'Kunal Sen', '17', '2008-06-17', '11'),
(18, 'Nandini Das', '16', '2009-09-11', '10'),
(19, 'Soumik Paul', '18', '2007-11-29', '12'),
(20, 'Diya Mukherjee', '15', '2010-07-06', '10');

CREATE TABLE COURSES
(CCOURSE_ID INT PRIMARY KEY NOT NULL,
COURSE_NAME VARCHAR(50),
COURSE_DURATION VARCHAR(10),
FACULTY_NAME VARCHAR(100));

INSERT INTO COURSES
(CCOURSE_ID, COURSE_NAME, COURSE_DURATION, FACULTY_NAME)
VALUES
(101, 'Data Analytics', '6 Months', 'Dr. Amit Sharma'),
(102, 'Python Programming', '4 Months', 'Prof. Priya Das'),
(103, 'Database Management', '3 Months', 'Dr. Rahul Roy'),
(104, 'Machine Learning', '6 Months', 'Prof. Sneha Ghosh'),
(105, 'Web Development', '5 Months', 'Dr. Arjun Kumar');


select * from STUDENTS;
select * from COURSES;
select * from STUDENTS where roll_no=1;

update COURSES 
set FACULTY_NAME="Dr. Sneha Khamrui"
where CCOURSE_ID=104;

delete from students where roll_no=20;
