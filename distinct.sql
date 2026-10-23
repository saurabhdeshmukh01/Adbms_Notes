
CREATE DATABASE organization;

use organization;

CREATE TABLE employee (empid int NOT NULL PRIMARY KEY,FistName VARCHAR(10),lastName VARCHAR(10),Gender char, role VARCHAR(15), dept VARCHAR(10), Managerid VARCHAR(10));

INSERT INTO employee values(1,'Atif','Aslam','M','Team leader', 'Retail','M11');
INSERT INTO employee values(2,'karan','pande','M','Team leader', 'Finace','M12');
INSERT INTO employee values(3,'Arushi','kaur','F','Team leader', 'Retail','M13');
INSERT INTO employee values(4,'Sumit','Borgave','M','Team leader', 'Hr','M14');
INSERT INTO employee values(5,'Tanvi','Deokar','F','Team leader', 'Retail','M15');

SELECT DISTINCT dept FROM employee ORDER BY dept;
SELECT DISTINCT role from employee ORDER BY role;

SELECT * from employee WHERE role = 'Team leader' and dept = 'Hr';
SELECT * from employee WHERE role = 'Team leader' and dept = 'Retail';

SELECT * from employee WHERE role = 'Team leader' or dept = 'Hr';







