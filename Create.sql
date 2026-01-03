-- Create a database named Students_Info.
CREATE DATABASE Students_Info;


-- Create the table as given below. -- Student
-- SNO Sname Saddress Sage

USE Stuenets_Info;
CREATE TABLE Student (
    SNO INT PRIMARY KEY,
    Sname VARCHAR(100) NOT NULL,
    Saddress VARCHAR(255),
    Sage INT
);


-- Add new column SDOB to the above table.
USE Stuenets_Info;

ALTER TABLE Student 
ADD SDOB DATE;

-- Remove the column Sage from the above table.

USE Stuenets_Info;

ALTER TABLE Student 
DROP COLUMN Sage;

-- Change the column name SNO to student_id.

USE Stuenets_Info;

ALTER TABLE Student 
RENAME COLUMN SNO TO student_id;


-- Change the data type of Student_id to varchar.
USE Stuenets_Info;

ALTER TABLE Student 
MODIFY student_id VARCHAR(20);

-- Change the name of the existing table to KCC_Students.

USE Stuenets_Info;
RENAME TABLE Student TO KCC_Students;


