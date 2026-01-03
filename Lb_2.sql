-- Create the table as given below.
-- eid Ename Eaddress Egender Eage Esalary

CREATE TABLE Employee (
    eid INT PRIMARY KEY,
    Ename VARCHAR(100) NOT NULL,
    Eaddress VARCHAR(255),
    Egender CHAR(1),
    Eage INT,
    Esalary DECIMAL(10, 2)
);


-- 1. Write an SQL command to insert the data as given above.
-- 1 Niroj Ktm M 21 12000
-- 2 Firoj Pkh M 22 5000
-- 3 Suraj Ktm M 20 10500
-- 4 Sujeena Lpt F 19 7500
-- 5 Sandhya NULL F 20 19000
-- 6 Prerana Pkh F 18 13000
-- 7 Subodh NULL M 24 9800
-- 8 Samir NPJ M 23 8500
-- 9 Samipa Brt F 22 6700
-- 10 Uday NULL M 25 11300

INSERT INTO Employee (eid, Ename, Eaddress, Egender, Eage, Esalary)
VALUES 
(1, 'Niroj', 'Ktm', 'M', 21, 12000),
(2, 'Firoj', 'Pkh', 'M', 22, 5000),
(3, 'Suraj', 'Ktm', 'M', 20, 10500),
(4, 'Sujeena', 'Lpt', 'F', 19, 7500),
(5, 'Sandhya', NULL, 'F', 20, 19000),
(6, 'Prerana', 'Pkh', 'F', 18, 13000),
(7, 'Subodh', NULL, 'M', 24, 9800),
(8, 'Samir', 'NPJ', 'M', 23, 8500),
(9, 'Samipa', 'Brt', 'F', 22, 6700),
(10, 'Uday', NULL, 'M', 25, 11300);



-- Retrieve name and address of all employees
SELECT Ename, Eaddress 
FROM Employee;



-- Retrieve name and address of these employees who lives in Ktm and
-- whose salary is above 7900.
SELECT Ename, Eaddress 
FROM Employee 
WHERE Eaddress = 'Ktm' AND Esalary > 7900;



-- Remove employees whose age is less than or equal to 20
DELETE FROM Employee 
WHERE Eage <= 20;




-- Retrieve information of those students who lives in Ktm and whose
-- age is above 22 or whose salary is greater than 10500.
SELECT * FROM Employee 
WHERE Eaddress = 'Ktm' 
AND (Eage > 22 OR Esalary > 10500);


-- Change the column eid to EMP-ID.
ALTER TABLE Employee 
RENAME COLUMN eid TO `EMP-ID`;



-- Change the data type of eid from integer to varchar.
ALTER TABLE Employee 
MODIFY `EMP-ID` VARCHAR(20);

-- Increase the age of employee Samipa by 2.
UPDATE Employee 
SET Eage = Eage + 2 
WHERE Ename = 'Samipa';


-- Delete those employees whose address is Bkt or salary is greater
-- than 15000.
DELETE FROM Employee 
WHERE Eaddress = 'Bkt' OR Esalary > 15000;


-- Increase the salary of all employees by 7 percentages.
UPDATE Employee 
SET Esalary = Esalary * 1.07;


-- Now increase the salary of employees by 5% who earn more than
-- 15000, else increase it by 10%.
UPDATE Employee
SET Esalary = CASE 
    WHEN Esalary > 15000 THEN Esalary * 1.05
    ELSE Esalary * 1.10
END;


-- Display employees whose salary is in the range 6999 and 11998.
SELECT * FROM Employee 
WHERE Esalary BETWEEN 6999 AND 11998;



-- Display employees who do not live in Ktm.
SELECT * FROM Employee 
WHERE Eaddress != 'Ktm';


-- Update the database such that Uday now lives in NPJ.
UPDATE Employee 
SET Eaddress = 'NPJ' 
WHERE Ename = 'Uday';




