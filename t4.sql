Name:Nivea Gigen
Class:S5 C
Register N0:CHN18CS092
--------------------------------------------------------------------------------
      TASK4
-------------------------------------------------------------------------------
/*Create and insert values for the following tables department and instructor(with
constarints)
 a.Department table
      Code(primary key)
      Title
      Dept_name(unique)
      Dept_id
      Salary(check –salary>2000)
 b.Instructor table
      Name(not null)
      Code
      Id(default)
*/
---------------------------------------------------------------------------------------
      CODE
---------------------------------------------------------------------------------------

#a

CREATE TABLE Department(
    `code` INT PRIMARY KEY NOT NULL,
    `title` VARCHAR(30),
    `dept_name` VARCHAR(30) UNIQUE NOT NULL,
    `dept_id` INT UNIQUE NOT NULL,
    `salary` INT,
    CHECK (`salary` > 2000 )
);

INSERT INTO Department(`code`, `title`, `dept_name`,  `dept_id`, `salary`) 
VALUES (333, "IT", "Computer", 333, 99000);
SELECT * FROM Department;

#b

CREATE TABLE Instructor(
    `name` VARCHAR(50) NOT NULL,
    `code` INT NOT NULL,
    `id` INT PRIMARY KEY DEFAULT 0
);

INSERT INTO Instructor(`name`,  `code`,  `id`)
VALUES ("Riya", 10, 10);
SELECT * FROM Instructor;



