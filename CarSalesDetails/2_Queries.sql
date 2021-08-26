USE SQLQueryCrackers
GO
SELECT * FROM Sales_Team
SELECT * FROM Sales_Data
SELECT * FROM Cars_Data

/* 1. How much is the total deposit each car dealer collected? (We want full name of car
dealer and the amount) */

SELECT 
ST.[Car Dealer First Name] + ' ' + ST.[Car Dealer Last Name]  AS [Car Dealer Full Name]
,SUM(SD.[Deposit Paid for booking]) AS [Deposit Collected]
FROM Sales_data SD WITH(NOLOCK)
INNER JOIN Sales_Team ST WITH(NOLOCK) ON ST.[Emp No] = SD.[Customer Manager ID]
GROUP BY ST.[Car Dealer First Name] + ' ' + ST.[Car Dealer Last Name]

/* 2. We need to know the car dealer full name, his total sales (total car price) and
percentage of his target left */

;WITH TAB AS
(
SELECT 
ST.[Car Dealer First Name] + ' ' + ST.[Car Dealer Last Name]  AS [Car Dealer Full Name]
,ST.[Emp No]
,SUM(CD.[Car Price]) [Total Sales]
FROM Sales_Team ST WITH(NOLOCK) 
INNER JOIN Sales_Data SD WITH(NOLOCK) ON SD.[Customer manager ID] = ST.[Emp No]
INNER JOIN Cars_Data CD WITH(NOLOCK) ON CD.[Car Code] = SD.[Customer Car Code]
GROUP BY ST.[Car Dealer First Name] + ' ' + ST.[Car Dealer Last Name],[Emp No]
) 
SELECT 
	[Car Dealer Full Name]
	,[Total Sales]
	,((ST.[Monthly Target] - [Total Sales])*100 ) / [Monthly Target] AS [Percentage of his Target Left]
FROM TAB 
INNER JOIN Sales_Team ST WITH(NOLOCK) ON ST.[Emp No] = TAB.[Emp No]
 
/* 3) What is the frequency of each car sold? (We want the car name and the frequency) */
