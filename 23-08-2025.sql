CREATE DATABASE IF NOT EXISTS university;
USE university;
CREATE TABLE persons (
    id INT PRIMARY KEY,        
    name VARCHAR(50) NOT NULL,
    email VARCHAR(100)         
);
ALTER TABLE persons
ADD CONSTRAINT uc_person UNIQUE (email);
INSERT INTO persons (id, name, email) VALUES
(1, 'Padhu', 'padhu@mail.com'),
(2, 'Harshi', 'harshi@mail.com');
SHOW INDEXES FROM persons;
ALTER TABLE persons
DROP INDEX uc_person;
SHOW INDEXES FROM persons;
