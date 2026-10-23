Begin;

DROP DATABASE TCL;
CREATE DATABASE TCL;

use TCL;

CREATE TABLE orders(
    order_id INT PRIMARY KEY,
    cust_name VARCHAR(10),
    status VARCHAR(20)
);

DESC orders;

set autocommit = 0-ACK;
SELECT * from orders;
INSERT INTO orders VALUES(103,"Abhi","Pending");
INSERT INTO orders VALUES(104,"Vansh","Pending");

SAVEPOINT sp1;
SELECT * from orders;

DELETE from orders WHERE order_id = 102
Savepoint sp1;



