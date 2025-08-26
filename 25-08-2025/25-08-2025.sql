CREATE DATABASE IF NOT EXISTS sathyabama;
USE sathyabama;
DROP TABLE IF EXISTS students1;
DROP TABLE IF EXISTS department;
DROP TABLE IF EXISTS college;
CREATE TABLE college (
    cid INT PRIMARY KEY,
    cname VARCHAR(25) NOT NULL
);
INSERT INTO college VALUES
(1,'SIST'),
(2,'Anna university'),
(3,'Saveetha'),
(4,'Veltech'),
(5,'VIT');
CREATE TABLE department (
    did INT PRIMARY KEY,
    dname VARCHAR(25) NOT NULL,
    cid INT NOT NULL,
    FOREIGN KEY (cid) REFERENCES college(cid)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);
INSERT INTO department VALUES
(101,'CSE',1),
(102,'ECE',2),
(103,'EEE',3),
(104,'MECH',4),
(105,'Dental',5),
(106,'IOT',2),
(107,'AIML',4);
CREATE TABLE students1 (
    sid INT PRIMARY KEY,
    sname VARCHAR(25) NOT NULL,
    did INT NOT NULL,
    FOREIGN KEY (did) REFERENCES department(did)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);
INSERT INTO students1 VALUES
(2037,'Harshi',101),
(2001,'Trivs',104),
(2027,'Vaishu',103),
(2019,'Teju',102),
(2020,'Aishu',105),
(2023,'Priya',102);
SELECT * FROM college;
SELECT * FROM department;
SELECT * FROM students1;
DELETE FROM college WHERE cid=3;
SELECT * FROM college;
SELECT * FROM department;
SELECT * FROM students1;