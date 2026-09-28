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