CREATE DATABASE IF NOT EXISTS Basicjoin;
USE Basicjoin;

-- Drop dependent (child) table first, then parent table
DROP TABLE IF EXISTS projects;
DROP TABLE IF EXISTS employee;

-- Create parent table
CREATE TABLE employee (
    empid INT PRIMARY KEY,
    empname VARCHAR(10)
);

INSERT INTO employee (empid, empname)
VALUES
    (101, 'Raghav'),
    (102, 'Ashwin'),
    (103, 'Mohit'),
    (104, 'Tara'),
    (105, 'Mona'),
    (106, 'Prem');

-- Create child table
CREATE TABLE projects (
    projectid INT PRIMARY KEY,
    pname VARCHAR(10),
    empid INT,
    FOREIGN KEY (empid) REFERENCES employee(empid)
);

INSERT INTO projects (projectid, pname, empid)
VALUES
    (1, 'Project A', 101),
    (2, 'Project B', 102),
    (3, 'Project C', 101),
    (4, 'Project D', 103),
    (5, 'Project E', 104);

-- 1. View all employees
SELECT * FROM employee;

-- 2. Join using full table names
SELECT * 
FROM employee 
JOIN projects 
ON employee.empid = projects.empid; 


SELECT e.empname, p.pname 
FROM employee e 
INNER JOIN projects p 
ON e.empid = p.empid;


SELECT e.empid,e.empname, p.pname 
FROM employee e 
LEFT JOIN projects p 
ON e.empid = p.empid;

SELECT * from employee 
LEFT JOIN projects 
ON employee.empid = projects.empid;

SELECT * from employee 
LEFT JOIN projects 
ON employee.empid = projects.empid
UNION
SELECT * from employee 
LEFT JOIN projects 
ON employee.empid = projects.empid;

SELECT * from employee 
LEFT JOIN projects 
ON employee.empid = projects.empid
WHERE projects.empid is not null;

SELECT * from employee 
LEFT JOIN projects 
ON employee.empid = projects.empid
WHERE projects.empid is null;









