  -- select all students who scored above 75 marks --
  SELECT [name],[marks]
  FROM [HackerRankSQL].[dbo].[students]
  WHERE [marks]>75;

  -- display distinct countries from customers table --

  SELECT DISTINCT [country]
  FROM [HackerRankSQL].[dbo].[customers]


   -- Find total number of emplopyees --

 SELECT COUNT(*) AS Total_epmloyees
 FROM  [HackerRankSQL].[dbo].[employees]

   -- show all producst with a price grater thn 200 -- 
  SELECT  *
    FROM  [HackerRankSQL].[dbo].[products]
    WHERE price > 200
    ORDER BY price DESC;


    --    display distinct countries from the customers table --- 
      USE  HackerRankSQL;
  GO

  SELECT DISTINCT Country
  FROM [dbo].[customers]