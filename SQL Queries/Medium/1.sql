--	Find the average salary for each department --

SELECT
    d.department_name,
    AVG(e.salary) AS avg_salary
FROM dbo.employees AS e
INNER JOIN dbo.departments AS d
    ON e.department_id = d.department_id
GROUP BY
    d.department_name;

    
-- Count the number of employees in each deaprtment --
SELECT d.department_name,
COUNT(e.employee_id) AS employee_count
FROM [dbo].departments AS d
LEFT JOIN [dbo].[employees] AS e
ON d.department_id = e.department_id
GROUP BY d.department_name
ORDER BY employee_count DESC;

-- Find customer who have  placed more than 2 orders --
SELECT c.customer_id,
c.customer_name,
COUNT(o.order_id) AS total_order
FROM [dbo].[customers] AS c
INNER JOIN [dbo].[orders] AS o
ON c.customer_id = o.customer_id
GROUP BY  c.customer_id, c.customer_name
HAVING COUNT (o.order_id) > 2

-- Calculate total quantity sold per product --
SELECT p.product_name,
SUM(oi.quantity) AS total_quantity
FROM [dbo].[products] AS p
INNER JOIN [dbo].[order_items] AS oi
ON p.product_id = oi.product_id
GROUP BY p.product_name
ORDER BY total_quantity DESC;

-- Find employees earning more than the average salary --
SELECT employee_id,
employee_name,
salary
FROM [dbo].[employees]
WHERE salary > ( SELECT AVG(salary)
FROM [dbo].[employees])
ORDER BY salary DESC;