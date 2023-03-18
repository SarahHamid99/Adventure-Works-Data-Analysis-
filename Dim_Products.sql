--Cleansed DIM_Products Table
SELECT P.ProductKey,
       P.ProductAlternateKey AS ProductItemCode,
      --,[ProductSubcategoryKey]
      --,[WeightUnitMeasureCode]
      --,[SizeUnitMeasureCode]
       P.EnglishProductName AS [Product Name],
	   PS.EnglishProductSubcategoryName AS [Sub Category],--Joined in from Sub Category Table
	   PC.EnglishProductCategoryName AS [Product Category],--Joined in from Category Table
      --,[SpanishProductName]
      --,[FrenchProductName]
      --,[StandardCost]
      --,[FinishedGoodsFlag]
      P.Color AS [Product Color],
      --,[SafetyStockLevel]
      --,[ReorderPoint]
      --,[ListPrice]
      P.Size AS [Product Size],
      --,[SizeRange]
      --,[Weight]
      --,[DaysToManufacture]
      P.ProductLine AS [Product Line],
      --,[DealerPrice]
      --,[Class]
      --,[Style]
      P.ModelName AS [Product Model Name],
      --,[LargePhoto]
      P.EnglishDescription AS [Product Description],
      --,[FrenchDescription]
      --,[ChineseDescription]
      --,[ArabicDescription]
      --,[HebrewDescription]
      --,[ThaiDescription]
      --,[GermanDescription]
      --,[JapaneseDescription]
      --,[TurkishDescription]
      --,[StartDate]
      --,[EndDate]
      --,[Status]
	  ISNULL(P.Status,'Outdated') AS [Product Status]

FROM 
  [AdventureWorksDW2019].[dbo].[DimProduct] AS P
  LEFT JOIN[AdventureWorksDW2019].[dbo].[DimProductSubcategory] AS PS 
  ON P.ProductSubcategoryKey=PS.ProductSubcategoryKey
  LEFT JOIN [AdventureWorksDW2019].[dbo].[DimProductCategory] AS PC 
  ON PS.ProductCategoryKey=PC.ProductCategoryKey
ORDER BY
  P.ProductKey
