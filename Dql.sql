drop DATABASE user;
CREATE DATABASE user;

USE user;

CREATE TABLE customer(custid int, 
custname varchar(15),
city VARCHAR(10), 
product VARCHAR(15), 
price int);

INSERT INTO customer(custid,custname,city,product,price) VALUES(1,"Sarvesh","Pune","Tablet",22000),
(2,"Aditya","Mumbai","iphone",800000),
(3,"Abhi","Pune","Rog",120000);

select * from customer;

ALTER TABLE customer add PRIMARY KEY(custid);

SELECT * from customer WHERE custid IN(1,3);

CREATE TABLE cust_clone As SELECT * from customer;

SELECT * from cust_clone;

DROP TABLE cust_clone;

SELECT * FROM customer WHERE price > 200;
SELECT * FROM customer WHERE price < 200;

SELECT * FROM customer WHERE city = "Pune";

SELECT * from customer ORDER BY city, price;
SELECT * from customer ORDER BY city DESC, price ASC;

SELECT UPPER(custname), LOWER(product) FROM customer WHERE custid < 3;

SELECT UPPER(custname), LOWER(product) FROM customer;

ALTER TABLE customer add column lastname VARCHAR(15);

SELECT * from customer;

UPDATE customer SET lastname = "Joshi" WHERE custid = 1;
UPDATE customer SET lastname = "Sharma" WHERE custid = 3;

SELECT CONCAT(custname, ' ',lastname) FROM customer;

SELECT CONCAT(custname, ' ', lastname) as FullName FROM customer;

SELECT * from customer;

SELECT SUBSTR(custname,1,3) FROM customer;

SELECT INSTR(custname, 'a') as position from customer;

SELECT SUBSTR(custname,1,3) as Substring,
INSTR(custname, 'z') as Position FROM customer;

SELECT SUBSTR(custname,1,3) as Substring,
INSTR(custname, 'z') as Position FROM customer WHERE custid = 2;


SELECT NOW();
SELECT NOW() as current_datetime;

alter table customer add column date date ; 

update customer set date = '2024-02-20' where custid = 1;