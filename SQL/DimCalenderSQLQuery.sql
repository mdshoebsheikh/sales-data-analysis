	SELECT [DateKey]
		  ,[FullDateAlternateKey] as Date
		  --,[DayNumberOfWeek]
		  ,[EnglishDayNameOfWeek] as Day
		  --,[SpanishDayNameOfWeek]
		  --,[FrenchDayNameOfWeek]
		  --,[DayNumberOfMonth]
		  --,[DayNumberOfYear]
		  ,[WeekNumberOfYear] as WeekNr
		  ,[EnglishMonthName] as Month
		  ,left([EnglishMonthName],3) as MonthShort
		  --,[SpanishMonthName]
		  --,[FrenchMonthName]
		  ,[MonthNumberOfYear] as MonthNo
		  ,[CalendarQuarter] as Quarter
		  ,[CalendarYear] as Year 
		  --,[CalendarSemester]
		  --,[FiscalQuarter]
		  --,[FiscalYear]
		  --,[FiscalSemester]
	FROM 
		[AdventureWorksDW2019].[dbo].[DimDate]
	WHERE 
		CalendarYear >= 2019