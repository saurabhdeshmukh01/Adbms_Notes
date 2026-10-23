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


