USE sathyabama;
CREATE TABLE employees (
    EMPLOYEE_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    FIRST_NAME VARCHAR(30) NOT NULL,
    LAST_NAME VARCHAR(30),
    DEPARTMENT VARCHAR(30),
    SALARY INT
);
INSERT INTO employees (FIRST_NAME, LAST_NAME, DEPARTMENT, SALARY) VALUES
('Amit', 'Sharma', 'HR', 80000),
('Vikram', 'Patel', 'IT', 250000),
('Sonia', 'Rao', 'Admin', 120000),
('Ramesh', 'Kumar', 'Finance', 90000),
('Vivek', 'Verma', 'IT', 300000),
('Anjali', 'Mehta', 'Admin', 70000),
('Varun', 'Singh', 'Finance', 220000),
('Pooja', 'Iyer', 'HR', 95000),
('Karan', 'Das', 'IT', 180000),
('Neha', 'Gupta', 'Finance', 75000);

SELECT * 
FROM employees
WHERE DEPARTMENT NOT IN ('HR', 'Admin')
  AND SALARY BETWEEN 70000 AND 300000;

SELECT * 
FROM employees
WHERE FIRST_NAME LIKE 'V%'
  AND SALARY >= 200000;

SELECT * 
FROM employees
WHERE DEPARTMENT <> 'Admin'
  AND SALARY < 100000;
