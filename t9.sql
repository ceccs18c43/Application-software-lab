Name:Nivea Gigen
Class:S5 C
Register N0:CHN18CS092
--------------------------------------------------------------------------------
      TASK9
-------------------------------------------------------------------------------
/*Order by and Group by clause

     1.Create table employee with fields Code , name , dob , designation , salary  .
     2.Display code, name, and designation in descending order of the name.
     3.Create table deposit with fields baccno , branch_name , amount .
     4.Give branch name and details of deposit table.*/
---------------------------------------------------------------------------------
     CODE
----------------------------------------------------------------------------------
#1
CREATE TABLE Employee(
    code CHAR(4) PRIMARY KEY,
    name VARCHAR(60),
    dob DATE,
    designation VARCHAR(80),
    salary FLOAT
);
INSERT INTO Employee(code, name, dob , designation, salary)
VALUES
('lu69','Luke','2000-2-2','CTO',190000.78),
('lu12','Ludo','2000-1-12','CEO',185000.78),
('al13','Alan','1998-8-2','Clerk',59000.78),
('sam1','Sam','1969-4-9','Auditor',59000.18);
------------------------------------------------------------------------------------
#2
SELECT * FROM Employee ORDER BY name DESC;
-------------------------------------------------------------------------------------
#3
CREATE TABLE Deposit(
    baccno BIGINT,
    branch_name VARCHAR(60),
    amount FLOAT
);
INSERT INTO Deposit(baccno, branch_name, amount)
VALUES
(1990001,'palakkad',290000.25),
(1990002,'palakkad',291233.22),
(1990003,'karunagapally',123570.1),
(1990004,'palakkad',2239083.78),
(1990005,'alapuzha',100090.90);
----------------------------------------------------------------------------------------
#4
SELECT branch_name,COUNT(baccno),SUM(amount) FROM Deposit GROUP BY branch_name;




