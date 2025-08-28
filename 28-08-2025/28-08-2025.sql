SHOW DATABASES;
USE sathyabama;
CREATE TABLE employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(20),
    emp_dept VARCHAR(20),
    emp_salary INT NOT NULL,
    emp_phn INT NOT NULL
);
INSERT INTO employee (emp_id, emp_name, emp_dept, emp_salary, emp_phn) VALUES
(1, 'Amit Sharma', 'HR', 80000, 9876543210),
(2, 'Vikram Patel', 'IT', 250000, 9876543211),
(3, 'Sonia Rao', 'Admin', 120000, 9876543212),
(4, 'Ramesh Kumar', 'Finance', 90000, 9876543213),
(5, 'Vivek Verma', 'IT', 300000, 9876543214),
(6, 'Anjali Mehta', 'Admin', 70000, 9876543215),
(7, 'Varun Singh', 'Finance', 220000, 9876543216),
(8, 'Pooja Iyer', 'HR', 95000, 9876543217),
(9, 'Karan Das', 'IT', 180000, 9876543218),
(10, 'Neha Gupta', 'Finance', 75000, 9876543219);
SELECT emp_dept, COUNT(*) AS total_employees
FROM employee
GROUP BY emp_dept;
SELECT emp_name, emp_salary
FROM employee
ORDER BY emp_salary DESC;
#Count employees not in HR or Admin.
SELECT COUNT(*) AS total_employees_not_in_HR_or_Admin
FROM employee
WHERE emp_dept NOT IN ('HR', 'Admin');
#Find the highest salary in each department.
SELECT emp_dept, MAX(emp_salary) AS highest_salary
FROM employee
GROUP BY emp_dept;
#offset and limit
SELECT * FROM employee
ORDER BY emp_id
LIMIT 10 OFFSET 5;
SHOW databases;
CREATE DATABASE sathyabama;
USE sathyabama;
CREATE TABLE Worker (
    WORKER_ID INT PRIMARY KEY,
    FIRST_NAME VARCHAR(50),
    LAST_NAME VARCHAR(50),
    SALARY INT,
    DEPARTMENT VARCHAR(50)
);
INSERT INTO Worker VALUES
(1, 'Abhi',    'Kumar', 50000, 'HR'),
(2, 'Sunitha', 'Vani',  60000, 'Admin'),
(3, 'Veera',   'Rao',   70000, 'IT'),
(4, 'Ramu',    'Naidu', 80000, 'IT'),
(5, 'Meena',   'Shree', 55000, 'Finance'),
(6, 'Arjun',   'Kumar', 45000, 'Finance'),
(7, 'Kiran',   'M',     90000, 'Admin'),
(8, 'Lakshmi', 'Devi',  40000, 'HR'),
(9, 'Sunny',   'K',     65000, 'IT'),
(10,'Priya',   'Rani',  75000, 'Finance'),
(11,'Harsha',  'Sai',   72000, 'Admin'),
(12,'Manoj',   'Reddy', 68000, 'HR');
SELECT * FROM Worker
ORDER BY WORKER_ID
LIMIT 10 OFFSET 5;
SHOW databases;
CREATE DATABASE sathyabama;
USE sathyabama;
CREATE TABLE Worker (
    WORKER_ID INT PRIMARY KEY,
    FIRST_NAME VARCHAR(50),
    LAST_NAME VARCHAR(50),
    SALARY INT,
    DEPARTMENT VARCHAR(50)
);
INSERT INTO Worker VALUES
(1, 'Abhi',    'Kumar', 50000, 'HR'),
(2, 'Sunitha', 'Vani',  60000, 'Admin'),
(3, 'Veera',   'Rao',   70000, 'IT'),
(4, 'Ramu',    'Naidu', 80000, 'IT'),
(5, 'Meena',   'Shree', 55000, 'Finance'),
(6, 'Arjun',   'Kumar', 45000, 'Finance'),
(7, 'Kiran',   'M',     90000, 'Admin'),
(8, 'Lakshmi', 'Devi',  40000, 'HR'),
(9, 'Sunny',   'K',     65000, 'IT'),
(10,'Priya',   'Rani',  75000, 'Finance'),
(11,'Harsha',  'Sai',   72000, 'Admin'),
(12,'Manoj',   'Reddy', 68000, 'HR');
SELECT * FROM Worker
ORDER BY WORKER_ID
LIMIT 10 OFFSET 5;
#Find departments with average salary > 100000.
SELECT emp_dept, AVG(emp_salary) AS avg_salary
FROM employee
GROUP BY emp_dept
HAVING AVG(emp_salary) > 100000;
#Find departments where max salary is exactly 500000.
SELECT emp_dept, MAX(emp_salary) AS max_salary
FROM employee
GROUP BY emp_dept
HAVING MAX(emp_salary) = 500000;
#Find departments with more than 1 employee and total salary > 100000.
SELECT emp_dept, COUNT(*) AS total_employees, SUM(emp_salary) AS total_salary
FROM employee
GROUP BY emp_dept
HAVING COUNT(*) > 1 AND SUM(emp_salary) > 100000;
#Find departments with avg salary between 50000 and 200000.
SELECT emp_dept, AVG(emp_salary) AS avg_salary
FROM employee
GROUP BY emp_dept
HAVING AVG(emp_salary) BETWEEN 50000 AND 200000;




