-- sql basic assignment
--
-- ques 1 
 CREATE DATABASE company_db;
 USE company_db;
 CREATE TABLE employees (
 employee_id INT PRIMARY KEY,
 first_name VARCHAR (50),
 last_name VARCHAR (30),
 department VARCHAR(90),
 salary INT ,
 hire_date DATE
 );
 
 -- ques 2 
 INSERT INTO employees  ( employee_id , first_name , last_name , department , salary , hire_date)
 VALUE (101, 'amit', 'sharma', 'HR', 5000, '2020-01-15'),
 (102 , 'riya', 'kapoor', 'sale', 75000, '2019-03-22'),
 (103, 'raj' , 'mehta', 'IT', 90000, '2018-07-11'),
 (104, 'neha' , 'verma', 'IT', 85000, '2021-09-01'),
 (105, 'arjun', 'singh', 'finance', 60000, '2022-02-10');
 
-- ques 3 
SELECT * FROM employees
ORDER BY salary ASC;

-- ques 4 
SELECT * FROM employees
ORDER BY department ASC, salary DESC;

-- ques 5 
SELECT * FROM employees
WHERE department = 'IT'
ORDER BY hire_date DESC;

-- ques 6
USE company_db;
CREATE TABLE sale (
sale_id INT PRIMARY KEY,
customer_name VARCHAR(50),
amount INT, 
sale_date DATE
);

INSERT INTO sale (sale_id , customer_name, amount, sale_date)
VALUE (1, 'aditi', 1500, '2024-08-01'),
(2, 'rohan', 2200, '2024-08-03'),
(3, 'aditi',3500 , '2024-09-05'),
(4, 'meena', 2700, '2024-09-15'), 
(5, 'rohan', 4500, '2024-09-25')

-- ques 7
SELECT * FROM sale
ORDER BY amount DESC;

-- 	ques 8 
SELECT *FROM sale 
WHERE customer_name = 'aditi';

-- ques 9
-- primary key :-
-- primary key is an attritube (columns) which help in uniquely indentify a rows, they are the
-- combination of two constraint unique and not null.
-- it can't contant duplicate value and also can't be null

-- foreign key:-
-- it is a coloumn that create a relationship 
-- between two tables by refering to primary key of another table 

-- ques 10 

-- constraints are the rules applied to columns in a table to maintain data accuracy 
-- COMMON constraints are :
-- a) primary key
-- b)foreign key 
-- c)not null
-- d)unique
-- e) check
-- f) default
