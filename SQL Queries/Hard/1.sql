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