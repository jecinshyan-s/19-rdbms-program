-- Question 19:
-- Create a cursor to fetch StudentID, StudentName, and DepartmentID
-- from the Student table and display the records.

SET SERVEROUTPUT ON;

CREATE TABLE Student (
    StudentID NUMBER(5) PRIMARY KEY,
    StudentName VARCHAR2(20) NOT NULL,
    DOB DATE,
    Gender VARCHAR2(10),
    DepartmentID NUMBER(5)
);

INSERT INTO Student VALUES
(1001, 'Arun', DATE '2005-06-15', 'Male', 101);

INSERT INTO Student VALUES
(1002, 'Divya', DATE '2005-08-20', 'Female', 102);

INSERT INTO Student VALUES
(1003, 'Karthik', DATE '2004-11-10', 'Male', 101);

INSERT INTO Student VALUES
(1004, 'Nisha', DATE '2005-03-25', 'Female', 103);

COMMIT;

-- Write your cursor program below.
