Name:Nivea Gigen
Class:S5 C
Register No:CHN18CS092
Roll No:43
---------------------------------------------------------------------------------------------------------
Task1
---------------------------------------------------------------------------------------------------------
a.Create a table student with attributes sno,name marks and dept
b.Add a new attribute age
c.Change the datatype size of dept
d.Delete the attribute marks from the table
e.Change the name of the student table to students
f.Delete all values from the table
g.Delete the entire table
---------------------------------------------------------------------------------------------------------
Code
----------------------------------------------------------------------------------------------------------
#a

CREATE TABLE student (
    sno INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    marks INT NOT NULL,
    dept VARCHAR(20) NOT NULL
);
------------------------------------------------------------------------------------------------------------
#b

ALTER TABLE student 
ADD COLUMN age INT NOT NULL;
------------------------------------------------------------------------------------------------------------
#c

ALTER TABLE student 
MODIFY COLUMN dept VARCHAR(10); 
------------------------------------------------------------------------------------------------------------
#d

ALTER TABLE student 
DROP COLUMN marks;
------------------------------------------------------------------------------------------------------------
#e

RENAME TABLE student TO students;
-------------------------------------------------------------------------------------------------------------
#f

TRUNCATE TABLE students;
-------------------------------------------------------------------------------------------------------------
#g

DROP TABLE students;
