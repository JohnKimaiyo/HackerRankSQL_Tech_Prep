  -- select all students who scored above 75 marks --
  SELECT [name],[marks]
  FROM [HackerRankSQL].[dbo].[students]
  WHERE [marks]>75;

  -- display distinct countries from customers table --

  SELECT DISTINCT [country]
  FROM [HackerRankSQL].[dbo].[customers]


   -- Find total number of emplopyees --

 SELECT COUNT(*) AS Total_epmloyees
 FROM  [HackerRankSQL].[dbo].[employees]

   -- show all producst with a price grater thn 200 -- 
  SELECT  *
    FROM  [HackerRankSQL].[dbo].[products]
    WHERE price > 200
    ORDER BY price DESC;


    --    display distinct countries from the customers table --- 
      USE  HackerRankSQL;
  GO

  SELECT DISTINCT Country
  FROM [dbo].[customers]

  -- find the totyal number of employees --
    SELECT COUNT(*) AS total_employees
  FROM [dbo].[employees];

  -- show all products with a price greater  than 200 --

SELECT product_id,
        product_name,
        price
FROM [dbo].[products]
WHERE price> 200
ORDER BY price DESC;


-- find the avaerage salary for each department -- 
SELECT d.department_name,
       AVG(e.salary) AS avg_salary
FROM [dbo].[employees] AS e
INNER JOIN [dbo].[departments] AS d
    ON e.department_id = d.department_id
GROUP BY d.department_name;


-- count the number of employees in each department --
SELECT d.department_name,
       COUNT(e.employee_id) AS employee_count
FROM [dbo].[departments] AS d
LEFT JOIN [dbo].[employees] AS e
ON d.department_id = e.department_id
GROUP BY d.department_name
ORDER BY COUNT(e.employee_id) DESC;


-- Find customers who have placed more than 2 orders --

SELECT c.customer_id,   
    c.customer_name,
    COUNT(o.order_id) AS total_orders
FROM [dbo].[customers] AS c
INNER JOIN [dbo].[orders] AS o
ON c.customer_id = o.customer_id
GROUP BY c.customer_id,
c.customer_name
HAVING COUNT(order_id) > 2;



-- calculate total quantity sold per product --
SELECT p.product_name,
SUM(oi.quantity) AS total_quantity
FROM [dbo].[products] AS p
INNER JOIN [dbo].[order_items] AS oi
ON p.product_id = oi.product_id
GROUP BY p.product_name
ORDER BY total_quantity DESC;