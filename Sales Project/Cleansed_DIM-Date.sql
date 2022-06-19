-- Cleansed DIM_DateTable --
SELECT 
  [DateKey], 
  [FullDateAlternateKey] AS Date, 
  -- ,[DayNumberOfWeek]
  [EnglishDayNameOfWeek] AS Day, 
  -- ,[SpanishDayNameOfWeek]
  -- ,[FrenchDayNameOfWeek]
  -- ,[DayNumberOfMonth]
  -- ,[DayNumberOfYear]
  [WeekNumberOfYear] AS Week, 
  [EnglishMonthName] AS Month, 
  left([EnglishMonthName], 3) As MonthShort, 
  -- ,[SpanishMonthName]
  --,[FrenchMonthName]
  [MonthNumberOfYear] AS MonthNo, 
  [CalendarQuarter] AS Quarter, 
  [CalendarYear] AS Year 
  --,[CalendarSemester]
  --,[FiscalQuarter]
  --,[FiscalYear]
  --,[FiscalSemester]
FROM 
  [AdventureWorksDW2017].[dbo].[DimDate]
where CalendarYear >= 2019