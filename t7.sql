Name:Nivea Gigen
Class:S5 C
Register N0:CHN18CS092
--------------------------------------------------------------------------------
      TASK6
-------------------------------------------------------------------------------
/*Implementation of Build in functions in RDBMS

     a.Create a table store. Fields are order no, code, item, quantity, price, discount, mrp
     
     b.Insert values into the table
     
     c.Display the table
     
     d.Write an SQL query to display the reminder, if the amount of an each item in store is divided by 9.
     
     e.Write SQL query to display the amount in store and its square
     
     f.Write SQL query to divide the amount in stock of each item by 7 in store table and display the result round to the nearest integer.*/
---------------------------------------------------------------------------------
     CODE
----------------------------------------------------------------------------------
#A
CREATE TABLE store(
    order_no int primary key AUTO_INCREMENT,
    code varchar(10) not null,
    item varchar(30) not null,
    quantity int default 0,
    price float,
    discount int default 0,
    mrp float not null
);
-----------------------------------------------------------------------------------
#B
INSERT INTO store(code,item,quantity,price,discount,mrp)
VALUES 
("a123", "Macbook Pro 13", 14, 100999.99, 2000, 120000),
("a420", "iPhone 12", 12, 90000, 1000, 119900),
("a123", "Airpods Pro", 10, 30000, 0, 59900);
------------------------------------------------------------------------------------
#C
SELECT * FROM store; 
-------------------------------------------------------------------------------------
#D
SELECT MOD(price,9) FROM store;
-------------------------------------------------------------------------------------
#E
SELECT price,POWER(price,2) FROM store;
-------------------------------------------------------------------------------------
#F
SELECT ROUND(mrp DIV 7) FROM store;
-------------------------------------------------------------------------------------


