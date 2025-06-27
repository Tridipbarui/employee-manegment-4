create database LIBRARY;

show databases;
use LIBRARY;
-- Create a sample table
CREATE TABLE Employees (
    emp_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    department VARCHAR(50),
    salary DECIMAL(10,2),
    join_date DATE
);

-- INSERT: Add employees (some with NULLs)
INSERT INTO Employees (first_name, last_name, email, department, salary, join_date)
VALUES
('John', 'Doe', 'john.doe@example.com', 'HR', 50000.00, '2022-01-15'),
('Jane', 'Smith', 'jane.smith@example.com', 'Finance', 60000.00, '2021-11-01'),
('Mike', 'Brown', NULL, 'IT', NULL, '2023-06-10'), -- email and salary missing
('Emily', NULL, 'emily@example.com', 'Marketing', 48000.00, NULL), -- last_name and join_date missing
('Robert', 'Taylor', 'robert.t@example.com', NULL, 70000.00, '2020-05-20'); -- department missing

select * from Employees;
SELECT emp_id, first_name, email FROM Employees WHERE first_name = 'Mike';
UPDATE Employees
SET email = 'mike.brown@example.com'
WHERE emp_id = 3;


SELECT emp_id, first_name, salary FROM Employees WHERE first_name = 'Mike';
UPDATE Employees
SET salary = 55000.00
WHERE emp_id = 3;

SELECT emp_id, first_name, last_name FROM Employees WHERE first_name = 'Emily';
UPDATE Employees
SET last_name = 'White'
WHERE emp_id = 4

SELECT emp_id, first_name, join_date FROM Employees WHERE first_name = 'Emily';
UPDATE Employees
SET join_date = CURDATE()
WHERE emp_id =4;

SELECT emp_id, first_name, department FROM Employees WHERE emp_id =5;
UPDATE Employees
SET department = 'Sales'
WHERE emp_id = 5;

-- DELETE: Remove records of employees who joined before 2021
SELECT emp_id, first_name, join_date
FROM Employees
WHERE emp_id =5;

DELETE FROM Employees
WHERE emp_id = 5;


-- OPTIONAL: View the cleaned table
SELECT * FROM Employees;
create database LIBRARY;

show databases;
use LIBRARY;
-- Create a sample table
CREATE TABLE Employees (
    emp_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    department VARCHAR(50),
    salary DECIMAL(10,2),
    join_date DATE
);

-- INSERT: Add employees (some with NULLs)
INSERT INTO Employees (first_name, last_name, email, department, salary, join_date)
VALUES
('John', 'Doe', 'john.doe@example.com', 'HR', 50000.00, '2022-01-15'),
('Jane', 'Smith', 'jane.smith@example.com', 'Finance', 60000.00, '2021-11-01'),
('Mike', 'Brown', NULL, 'IT', NULL, '2023-06-10'), -- email and salary missing
('Emily', NULL, 'emily@example.com', 'Marketing', 48000.00, NULL), -- last_name and join_date missing
('Robert', 'Taylor', 'robert.t@example.com', NULL, 70000.00, '2020-05-20'); -- department missing

select * from Employees;
SELECT emp_id, first_name, email FROM Employees WHERE first_name = 'Mike';
UPDATE Employees
SET email = 'mike.brown@example.com'
WHERE emp_id = 3;


SELECT emp_id, first_name, salary FROM Employees WHERE first_name = 'Mike';
UPDATE Employees
SET salary = 55000.00
WHERE emp_id = 3;

SELECT emp_id, first_name, last_name FROM Employees WHERE first_name = 'Emily';
UPDATE Employees
SET last_name = 'White'
WHERE emp_id = 4
SELECT emp_id, first_name, join_date FROM Employees WHERE first_name = 'Emily';

UPDATE Employees
SET join_date = CURDATE()
WHERE emp_id =4;

SELECT emp_id, first_name, department FROM Employees WHERE emp_id =5;
UPDATE Employees
SET department = 'Sales'
WHERE emp_id = 5;

-- DELETE: Remove records of employees who joined before 2021
SELECT emp_id, first_name, join_date
FROM Employees
WHERE emp_id =5;

DELETE FROM Employees
WHERE emp_id = 5;



-- Use the LIBRARY database
USE LIBRARY;

-- 1. SELECT all columns from Employees
SELECT * FROM Employees;

-- 2. SELECT specific columns: first_name, department, salary


-- 3. WHERE condition: Filter employees from HR department
SELECT * FROM Employees
WHERE department = 'HR';

-- 4. WHERE with AND: Employees from Finance earning more than 50000
SELECT * FROM Employees
WHERE department = 'Finance' AND salary > 50000;

-- 5. WHERE with OR: Employees in HR or IT departments
SELECT * FROM Employees
WHERE department = 'HR' OR department = 'IT';

-- 6. LIKE: Employees whose first name starts with 'J'
SELECT * FROM Employees
WHERE first_name LIKE 'J%';

-- 7. BETWEEN: Employees with salary between 45000 and 60000
SELECT * FROM Employees
WHERE salary BETWEEN 45000 AND 60000;

-- 8. ORDER BY salary ascending
SELECT * FROM Employees
ORDER BY salary ASC;

-- 9. ORDER BY join_date descending
SELECT * FROM Employees
ORDER BY join_date DESC;

-- 10. LIMIT: Show only top 3 records
SELECT * FROM Employees
LIMIT 3;

-- 11. Combine WHERE, ORDER BY, and LIMIT
-- Example: Top 2 highest-paid employees in Marketing or Sales
SELECT * FROM Employees
WHERE department IN ('Marketing', 'Sales')
ORDER BY salary DESC
LIMIT 2;

-- 12. Using aliasing for better readability
SELECT first_name AS 'First Name', department AS 'Dept', salary AS 'Monthly Salary'
FROM Employees
ORDER BY salary DESC;
-- day 4 task start here
--  Total number of employees per department
SELECT department, COUNT(*) AS total_employees
FROM employees
GROUP BY department;
--  Average salary per department
SELECT COUNT(DISTINCT job_title) AS unique_jobs
FROM employees;
-- Departments with average salary above 50,000
SELECT COUNT(DISTINCT job_title) AS unique_jobs
FROM employees;
-- Total salary cost per department
SELECT job_title, MAX(salary) AS highest, MIN(salary) AS lowest
FROM employees
GROUP BY job_title;
-- Number of distinct job roles
SELECT COUNT(DISTINCT job_title) AS unique_jobs
FROM employees;
--  Maximum and minimum salary by job title
SELECT job_title, MAX(salary) AS highest, MIN(salary) AS lowest
FROM employees
GROUP BY job_title;

-- 



