/*Name:Nivea Gigen
Class:S5 C 43
Register N0:CHN18CS092
--------------------------------------------------------------------------------
      TASK10
-------------------------------------------------------------------------------
  Write a PL/SQL block to illustrate the use of implicit cursor
---------------------------------------------------------------------------------
     CODE
----------------------------------------------------------------------------------*/
CREATE TABLE employee(
    code CHAR(4) PRIMARY KEY,
    name VARCHAR(60),
    dob DATE,
    designation VARCHAR(80),
    salary FLOAT
);
INSERT INTO employee(code, name, dob , designation, salary)
VALUES
('lu69','Luke','2000-2-2','CTO',190000),
('lu12','Ludo','2000-1-12','CEO',185000),
('al13','Alan','1998-8-2','Clerk',59000),
('sam1','Sam','1969-4-9','Auditor',59000);

CREATE TABLE CUR( NAME VARCHAR(70),DOB DATE, SALARY FLOAT);
DELIMITER //
CREATE PROCEDURE IMP()
BEGIN
    DECLARE done INT  DEFAULT FALSE;
    DECLARE emp_name VARCHAR(70);
    DECLARE emp_dob DATE;
    DECLARE emp_salary FLOAT;
    DECLARE emp_record CURSOR FOR SELECT  name, dob, salary FROM employee;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET DONE= TRUE;
    
	OPEN emp_record;
    read_loop:LOOP 
        FETCH emp_record INTO emp_name,emp_dob,emp_salary;
		IF done THEN
          LEAVE read_loop;
		END IF;
          INSERT INTO CUR VALUES(emp_name,emp_dob,emp_salary);
    END LOOP;
   CLOSE emp_record;
END;//
DELIMITER ;
CALL IMP();
SELECT * FROM CUR;












