-- College
-- S_id S_name S_Address Age Phone
-- 1 Ram Kathmandu 21 5562236
-- 2 Hari Pokhara 25 5465222
-- 3 Sita Kathmandu 23 4635544
-- 4 Ramhari Bhairawa 25 4566855
-- 5 Rameshwor Butwal 19 6542534
-- 6 Harka Kathmandu 31 5302530
-- 7 Sitaram Pokhara 28 5554560


-- Display name, address and phone of all students whose name start with ‘R’.
SELECT S_name, S_Address, Phone
FROM College
WHERE S_name LIKE 'R%';



-- List out id and name of all students whose name’s second letter is ‘a’.
SELECT S_id, S_name
FROM College
WHERE S_name LIKE '_a%';


-- Select name and phone of all students whose name ends with letter ‘m’.
SELECT S_name, Phone
FROM College
WHERE S_name LIKE '%m';


-- Print address of all students whose name’s second letter is ‘a’ and second last letter is ‘r’.
SELECT S_Address
FROM College
WHERE S_name LIKE '_a%r_';


-- Display name of all students whose name contains exactly four letters.
SELECT S_name
FROM College
WHERE S_name LIKE '____';

-- Display information of those students whose name start with letter ‘H’ and contains exactly four letters.
SELECT *
FROM College
WHERE S_name LIKE 'H___';


-- Display information of those students whose name start with letter ‘H’ or ‘s’ and contains exactly four letters.
SELECT *
FROM College
WHERE S_name LIKE 'H___' 
OR S_name LIKE 'S___';

-- Display information of those students whose name start with letter ‘S’ and ends with ‘a’ and contains
-- exactly four letters.
SELECT *
FROM College
WHERE S_name LIKE 'S__a';


-- Display name address and age of all students who lives in Kathmandu and are at most 20 years old.
SELECT S_name, S_Address, Age
FROM College
WHERE S_Address = 'Kathmandu' 
  AND Age <= 20;


-- Display information about all students in descending order of age.
SELECT *
FROM College
ORDER BY Age DESC;


-- Display id, name, age and address of all students in ascending order of their age.
SELECT S_id, S_name, Age, S_Address
FROM College
ORDER BY Age ASC;


-- Display record of all students in descending order of name.
SELECT *
FROM College
ORDER BY S_name DESC;



-- Select distinct (not repeated) address from table [i.e. no address should be repeated in list.
SELECT DISTINCT S_Address
FROM College;








