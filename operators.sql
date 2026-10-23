drop DATABASE organization;
CREATE DATABASE organization;

use organization;

CREATE TABLE employee (empid int NOT NULL PRIMARY KEY,FistName VARCHAR(10),lastName VARCHAR(10),Gender char, role VARCHAR(15), dept VARCHAR(10), Managerid VARCHAR(10));

INSERT INTO employee values(1,'Atif','Aslam','M','Team leader', 'Retail','M11');
INSERT INTO employee values(2,'karan','pande','M','Team leader', 'Finace','M12');
INSERT INTO employee values(3,'Arushi','kaur','F','President', 'Retail','M13');
INSERT INTO employee values(4,'Sumit','Borgave','M','Team leader', 'Hr','M14');
INSERT INTO employee values(5,'Tanvi','Deokar','F','Manager', 'Retail','M15');

SELECT DISTINCT dept FROM employee ORDER BY dept;
SELECT DISTINCT role from employee ORDER BY role;

SELECT * from employee WHERE role = 'Team leader' and dept = 'Hr';
SELECT * from employee WHERE role = 'Team leader' and dept = 'Retail';

SELECT * from employee WHERE role = 'Team leader' or dept = 'Hr';

SELECT * from employee where role in('President','Manager');
SELECT * from employee where role in('Team leader','Manager');

SELECT * from employee where role not in('President','Manager');
SELECT * from employee where role not in('Team leader','Manager');

ALTER TABLE employee add COLUMN experince int;

SELECT * from employee;

DESC employee;

UPDATE employee SET experince = 8 WHERE empid = 1;
UPDATE employee SET experince = 5 WHERE empid = 2;
UPDATE employee SET experince = 7 WHERE empid = 3;
UPDATE employee SET experince = 9 WHERE empid = 4;
UPDATE employee SET experince = 6 WHERE empid = 5;
UPDATE employee SET experince = 10 WHERE empid = 6;

SELECT * from employee;
SELECT * from employee WHERE experince BETWEEN 6 AND 9;
SELECT * FROM employee WHERE experince =  5 or experince = 9;

SELECT * from employee WHERE lastName like 'p%';

select * from employee;

select * from employee order by experince limit 5;

INSERT INTO employee VALUES(6,'Asha','Joshi','F','President','Hr','',null);
select * from employee;


SELECT * from employee WHERE experince is null;

SELECT COUNT(*) from employee;

SELECT COUNT(empid) from employee WHERE dept = "Finace";
SELECT min(experince) from employee;
SELECT MAX(experince) from employee;
SELECT SUM(experince) from employee;
SELECT AVG(experince) as emp_exp from employee;

SELECT * FROM employee;

SELECT dept, COUNT(*) as employee_count from employee GROUP BY dept;
SELECT role, COUNT(*) as employee_count from employee GROUP by role;

Select gender, count(*) as employee_count from employee group by gender;

SELECT * from employee;
SELECT dept, SUM(experince) as total_experince from employee GROUP BY dept HAVING total_experince <= 20;

SELECT * from employee;
SELECT dept, COUNT(empid) from employee GROUP BY dept HAVING COUNT(empid) > 2
ORDER BY COUNT(empid);

SELECT dept, SUM(experince) as total_experince from employee GROUP BY dept HAVING total_experince >= 10 or total_experince <= 10 ORDER BY total_experince DESC;

