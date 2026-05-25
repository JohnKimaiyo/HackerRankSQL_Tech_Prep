  -- select all students who scored above 75 marks --
  SELECT [name],[marks]
  FROM [HackerRankSQL].[dbo].[students]
  WHERE [marks]>75;

  -- display distinct countries from customers table --

  SELECT DISTINCT [country]
  FROM [HackerRankSQL].[dbo].[customers]