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