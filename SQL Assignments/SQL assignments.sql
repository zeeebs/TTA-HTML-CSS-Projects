USE db_zoo1
SELECT * FROM tbl_specialist
SELECT * FROM tbl_species
SELECT * FROM tbl_care


SELECT specialist_fname, specialist_lname, specialist_contact
FROM tbl_specialist 
INNER JOIN tbl_care ON tbl_care.care_specialist = tbl_specialist.specialist_id
INNER JOIN tbl_species ON tbl_species.species_care = tbl_care.care_id
WHERE species_name = 'penguin';


--Select DISTINCT Challange
USE AdventureWorks2017
SELECT DISTINCT Color
FROM Production.Product;

--Select TOP Challenge
SELECT TOP 10 Color
FROM Production.Product;

--SQL MIN/MAX Challenge
SELECT MIN(ProductNumber)
FROM Production.Product;

SELECT MAX(ProductNumber)
FROM Production.Product;

--SQL LIKE Challenge
SELECT Color
FROM Production.Product
WHERE Color LIKE 'b%';

--SQL [] WILDCARD Challenge
SELECT Color
FROM Production.Product
WHERE Color LIKE '[bla]%';

--SQL BETWEEN Challenge
SELECT ProductID FROM Production.Product
WHERE ProductID BETWEEN 300 AND 400;