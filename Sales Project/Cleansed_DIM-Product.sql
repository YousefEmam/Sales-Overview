-- Cleansed DIM_Product 
SELECT 
	   [ProductKey]
      ,[ProductAlternateKey] AS 'Product Code'
      --,[ProductSubcategoryKey]
      --,[WeightUnitMeasureCode]
      --,[SizeUnitMeasureCode]
      ,[EnglishProductName] AS 'Product Name'
	  ,EnglishProductCategoryName as 'Product Category'
	  ,EnglishProductSubcategoryName as 'Sub Category'
      --,[SpanishProductName]
      --,[FrenchProductName]
      --,[StandardCost]
      --,[FinishedGoodsFlag]
      ,[Color] AS 'Product Color'
      --,[SafetyStockLevel]
      --,[ReorderPoint]
      --,[ListPrice]
      ,[Size] AS 'Prodcut Size'
      --,[SizeRange]
      --,[Weight]
      --,[DaysToManufacture]
      ,[ProductLine] AS 'Product Line'
      --,[DealerPrice]
      --,[Class]
      --,[Style]
      ,[ModelName] AS 'Product Model Name'
      --,[LargePhoto]
      ,[EnglishDescription] AS 'Product Description'
      --,[FrenchDescription]
      --,[ChineseDescription]
      --,[ArabicDescription]
      --,[HebrewDescription]
      --,[ThaiDescription]
      --,[GermanDescription]
      --,[JapaneseDescription]
      --,[TurkishDescription]
      ,[StartDate]
      ,[EndDate]
      ,ISNULL(status,'Outdated') As 'Product Status'
  FROM [AdventureWorksDW2017].[dbo].[DimProduct] as p 
  left join DimProductSubcategory as sub on sub.ProductSubcategoryKey=p.ProductSubcategoryKey
  left join DimProductCategory as c on c.ProductCategoryKey = sub.ProductCategoryKey
  order by p.ProductKey