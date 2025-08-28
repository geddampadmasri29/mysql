#A school has following rules for grading system:
#a. Below 25 - F
#b. 25 to 45 - E
#c. 45 to 50 - D
#d. 50 to 60 - C
#e. 60 to 80 - B
#f. Above 80 – A
#Ask user to enter marks and print the corresponding grade.
CREATE DATABASE school;
USE school;
CREATE TABLE students (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    marks INT
);
INSERT INTO students (name, marks) VALUES
('Amit', 20),
('Neha', 42),
('Ravi', 48),
('Sonia', 55),
('Karan', 75),
('Vivek', 90);
SELECT name, marks,
       CASE
           WHEN marks < 25 THEN 'F'
           WHEN marks >= 25 AND marks < 45 THEN 'E'
           WHEN marks >= 45 AND marks < 50 THEN 'D'
           WHEN marks >= 50 AND marks < 60 THEN 'C'
           WHEN marks >= 60 AND marks < 80 THEN 'B'
           ELSE 'A'
       END AS grade
FROM students;

#Take values of length and breadth of a rectangle from user and check if it is square or not.
CREATE DATABASE shapes;
USE shapes;
CREATE TABLE rectangle (
    id INT PRIMARY KEY AUTO_INCREMENT,
    length INT,
    breadth INT
);
INSERT INTO rectangle (length, breadth) VALUES
(10, 10),
(15, 20);
SELECT id, length, breadth,
       CASE
           WHEN length = breadth THEN 'Square'
           ELSE 'Rectangle'
       END AS shape_type
FROM rectangle;

#Write a program to print absolute vlaue of a number entered by user. E.g.-
#INPUT: 1        OUTPUT: 1
#INPUT: -1        OUTPUT: 1
CREATE DATABASE numbersdb;
USE numbersdb;
CREATE TABLE numbers (
    id INT PRIMARY KEY AUTO_INCREMENT,
    num INT
);
INSERT INTO numbers (num) VALUES
(1), (-1), (25), (-40);
SELECT num, ABS(num) AS absolute_value
FROM numbers;
