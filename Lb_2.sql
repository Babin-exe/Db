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



