  -- list all students who score more than 75 marks --
  SELECT  [student_id]
      ,[name]
      ,[marks]
       FROM [HackerRankSQL].[dbo].[students]
       WHERE [marks] >75
       ORDER BY [marks] DESC;