-- Create the table for Employee (eid, ename, branch-name, salary)
-- Eid Ename Branch-name esalary
-- 10 Saroj KTM 13000
-- 11 Bikash LPT 15000
-- 13 Rabi KTM 18000
-- 16 Subash LPT 15000
-- 19 Santhosh BKT 7500
-- 20 Ajay KTM 11000
-- 21 Kiran BKT 14500
-- 22 Bipin LPT 7500

CREATE TABLE Employee (
    eid INT PRIMARY KEY,
    ename VARCHAR(50),
    branch_name VARCHAR(50),
    salary INT
);

-- Find the total sum salaries of all employees
SELECT SUM(salary) AS total_salary
FROM Employee;

-- Find the highest salary. Column name should be displayed as Highest-Salary
SELECT MAX(salary) AS "Highest-Salary"
FROM Employee;



-- Find the average salary of employees
SELECT AVG(salary) AS "Average-Salary"
FROM Employee;


-- Display the total no of employees
SELECT COUNT(*) AS "Total-Employees"
FROM Employee;

-- Display the total values appearing in the field ‘branch-name’
SELECT COUNT("branch-name") AS "Total-Branch-Values"
FROM Employee;

-- Display the total no of branches appearing in the ‘Employee’ relation
SELECT COUNT(DISTINCT "branch-name") AS "Total-No-of-Branches"
FROM Employee;


-- Sort the name of employees is ascending order and display the first name of employee
SELECT ename 
FROM Employee 
ORDER BY ename ASC 
LIMIT 1;









