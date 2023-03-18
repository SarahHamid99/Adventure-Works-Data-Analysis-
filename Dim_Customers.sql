--Cleansed DIM_Customer Table
SELECT C.CustomerKey,
      --,[GeographyKey]
      --,[CustomerAlternateKey]
      --,[Title]
      C.FirstName AS [First Name],
      --,[MiddleName]
      C.LastName AS [Last Name],
	  CONCAT(C.FirstName,' ',C.LastName) AS [Full Name],--Combined First and Last Name
      --,[NameStyle]
      --,[BirthDate]
      --,[MaritalStatus]
      --,[Suffix]
      CASE C.Gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female'  END AS Gender,
      --,[EmailAddress]
      --,[YearlyIncome]
      --,[TotalChildren]
      --,[NumberChildrenAtHome]
      --,[EnglishEducation]
      --,[SpanishEducation]
      --,[FrenchEducation]
      --,[EnglishOccupation]
      --,[SpanishOccupation]
      --,[FrenchOccupation]
      --,[HouseOwnerFlag]
      --,[NumberCarsOwned]
      --,[AddressLine1]
      --,[AddressLine2]
      --,[Phone]
      C.DateFirstPurchase,
      --,[CommuteDistance],
	  G.city AS [Customer City]

FROM --Joined in Customer City from Geography Table
  [AdventureWorksDW2019].[dbo].[DimCustomer] AS C 
  LEFT JOIN [AdventureWorksDW2019].[dbo].[DimGeography] AS G
  ON C.GeographyKey=G.GeographyKey
ORDER BY C.CustomerKey ASC  --Ordered List by CustomerKey