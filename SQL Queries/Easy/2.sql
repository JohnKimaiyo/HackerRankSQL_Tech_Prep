-- list all students who scorfed more than 75 marks --
SELECT top 100  [student_id],
[name],
marks
FROM [dbo].[students] 
WHERE marks > 75
ORDER BY marks DESC;