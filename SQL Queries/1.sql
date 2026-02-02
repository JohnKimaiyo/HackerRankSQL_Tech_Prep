  -- list all students who score more than 75 marks --
  SELECT  [student_id]
      ,[name]
      ,[marks]
       FROM [HackerRankSQL].[dbo].[students]
       WHERE [marks] >75
       ORDER BY [marks] DESC;

  -- distplay the contry column only -- 
SELECT DISTINCT country
FROM customers;


-- count the total number of employees --
SELECT COUNT ([employee_name]) AS Total_number_of_employee
FROM [HackerRankSQL].[dbo].[employees]

 