Name:Nivea Gigen
Class:S5 C
Register N0:CHN18CS092
--------------------------------------------------------------------------------
      TASK5
-------------------------------------------------------------------------------
/*Practice of SQL TCL commands like Rollback, Commit, Savepoint
   a.Create a table class. Fields are name and id
   b.Insert values into the table
   c.Display the table
   d.Apply commit, save point and rollback commands*/
---------------------------------------------------------------------------------
     CODE
----------------------------------------------------------------------------------

-- (a) Create a table class.Fields are name and id --

CREATE TABLE Class (
	`id` INT PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(50)
);

-- (b) Insert values into the table --

INSERT INTO Class (`name`) VALUES ("LALAMAN"), ("SUSMA"), ("BEEKER");

-- (c) Display the table --

SELECT * FROM Class;

-- (d) Apply commit, save point and rollback commands --

START TRANSACTION;
INSERT INTO Class (`name`) VALUES ("NEWMAN");
ROLLBACK; 
INSERT INTO Class (`name`) VALUES ("NEWMAN");
COMMIT;

START TRANSACTION;
SAVEPOINT BeforeEvilEra;
INSERT INTO Class (`name`) VALUES ("EVILERA");
ROLLBACK TO BeforeEvilEra;
COMMIT;
SELECT * FROM Class;
