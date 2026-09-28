-- Rank employees by salary within each department --
SELECT 
    employee_id,
    employee_name,
    department_id,
    salary,
    DENSE_RANK() OVER (
        PARTITION BY department_id 
        ORDER BY salary DESC
    ) AS salary_rank
FROM [dbo].[employees];


-- Find the highest paid employee in each department --

WITH ranked_employees AS (
    SELECT employee_id,
           employee_name,
           department_id,
           salary,
           ROW_NUMBER() OVER (
               PARTITION BY department_id 
               ORDER BY salary DESC
           ) AS rn
    FROM [dbo].[employees]
)
SELECT employee_id,
       employee_name,
       department_id,
       salary
FROM ranked_employees WHERE rn = 1
ORDER BY department_id;

SELECT o.order_date,
       SUM(oi.quantity)                            AS daily_quantity,
       SUM(SUM(oi.quantity)) OVER (
           ORDER BY o.order_date
           ROWS BETWEEN UNBOUNDED PRECEDING
                    AND CURRENT ROW
       )                                           AS running_total
FROM   [dbo].[orders]      AS o
INNER JOIN [dbo].[order_items] AS oi
       ON  o.order_id = oi.order_id
GROUP BY o.order_date
ORDER BY o.order_date;

