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


-- Fill the table with some information.

USE Stuenets_Info;
INSERT INTO KCC_Students (student_id, Sname, Saddress, SDOB)
VALUES 
('KCC-101', 'A', '123 Maple Avenue, NY', '2004-05-15'),
('KCC-102', 'B', '456 Oak Street, CA', '2003-11-22'),
('KCC-103', 'C', '789 Pine Road, TX', '2005-01-30'),
('KCC-104', 'D', '321 Elm Blvd, FL', '2004-08-12'),
('KCC-105', 'E', '654 Cedar Lane, WA', '2002-12-05');

-- Delete all data except for the table.
USE Stuenets_Info;
TRUNCATE TABLE KCC_Students;



