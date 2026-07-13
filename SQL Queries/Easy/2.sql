-- list all students who scorfed more than 75 marks --
SELECT top 100  [student_id],
[name],
marks
FROM [dbo].[students] 
WHERE marks > 75
ORDER BY marks DESC;

-- display disticnt countries from the customers table --

SELECT DISTINCT country
FROM [dbo].[customers]

-- find the total number of employees --
SELECT COUNT(*) AS total_employees
FROM [dbo].[employees]

-- show all products with price greater than 200 --

SELECT product_id,
product_name,
price
FROM [dbo].[products] 
WHERE price >200
order by PRICE  desc;