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












