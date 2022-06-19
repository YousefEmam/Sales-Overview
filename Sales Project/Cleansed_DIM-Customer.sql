-- Cleansed DIM-Customer table --
SELECT 
	   [CustomerKey] AS CustomerKey,
      --,[GeographyKey]
      --,[CustomerAlternateKey]
      --,[Title]
      [FirstName] AS 'First Name',
      --,[MiddleName]--
      [LastName] AS 'Last Name',
	  [FirstName]+' '+LastName AS 'Full Name',
      --,[NameStyle]
      --,[BirthDate]
      --,[MaritalStatus]
      --,[Suffix]
case Gender when 'M' then 'Male' when 'F' then 'Female' end as Gender,
      --,[Gender]
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
      [DateFirstPurchase] AS 'Date First Purchase',
      --,[CommuteDistance]
	  g.city AS 'Customer City' --joining customer city from geo table 
	  from DimCustomer c
	  left join DimGeography g on g.GeographyKey=c.GeographyKey
	  order by CustomerKey
