--	Find the average salary for each department --

SELECT
    d.department_name,
    AVG(e.salary) AS avg_salary
FROM dbo.employees AS e
INNER JOIN dbo.departments AS d
    ON e.department_id = d.department_id
GROUP BY
    d.department_name;