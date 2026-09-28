-- Basic SQL SELECT, WHERE and ORDER BY Queries
-- Task 21 - Data Analytics Track

CREATE TABLE employees (
    employee_id INT,
    employee_name VARCHAR(50),
    department VARCHAR(50),
    salary INT,
    city VARCHAR(50)
);

INSERT INTO employees VALUES
(1, 'Rahul', 'IT', 45000, 'Delhi'),
(2, 'Priya', 'HR', 38000, 'Noida'),
(3, 'Aman', 'IT', 52000, 'Delhi'),
(4, 'Neha', 'Sales', 41000, 'Ghaziabad'),
(5, 'Rohit', 'Finance', 48000, 'Meerut'),
(6, 'Anjali', 'HR', 36000, 'Delhi'),
(7, 'Vikas', 'Sales', 55000, 'Noida'),
(8, 'Pooja', 'IT', 60000, 'Ghaziabad'),
(9, 'Karan', 'Finance', 43000, 'Delhi'),
(10, 'Simran', 'Sales', 47000, 'Meerut');

-- Query 1: Display all employees
SELECT * FROM employees;

-- Query 2: Display employee names and departments
SELECT employee_name, department
FROM employees;

-- Query 3: Display employees from IT department
SELECT *
FROM employees
WHERE department = 'IT';

-- Query 4: Display employees with salary greater than 45000
SELECT *
FROM employees
WHERE salary > 45000;

-- Query 5: Display employees from Delhi
SELECT *
FROM employees
WHERE city = 'Delhi';

-- Query 6: Display employees with salary between 40000 and 50000
SELECT *
FROM employees
WHERE salary BETWEEN 40000 AND 50000;

-- Query 7: Sort employees by salary in ascending order
SELECT *
FROM employees
ORDER BY salary ASC;

-- Query 8: Sort employees by salary in descending order
SELECT *
FROM employees
ORDER BY salary DESC;

-- Query 9: Display IT employees ordered by salary
SELECT *
FROM employees
WHERE department = 'IT'
ORDER BY salary DESC;

-- Query 10: Display employees from Delhi ordered by name
SELECT *
FROM employees
WHERE city = 'Delhi'
ORDER BY employee_name ASC;
