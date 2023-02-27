CREATE TABLE [Sample2].[dbo].[tblEmployee] 
(
	[ID] INT IDENTITY(1,1),
	[Name] NVARCHAR(50) NOT NULL,
	[Gender] NVARCHAR(50) NOT NULL,
	[Salary] INT NOT NULL,
	[City] NVARCHAR(50) NOT NULL,
	PRIMARY KEY ([ID])
);
INSERT INTO [Sample2].[dbo].[tblEmployee] 
(
	[Name],
	[Gender],
	[Salary],
	[City]
) 
VALUES 
('Tom', 'Male', 4000, 'London'),
('Pam', 'Female', 3000, 'New York'),
('John', 'Male', 3500, 'London'),
('Sam', 'Male', 4500, 'London'),
('Todd', 'Male', 2800, 'Sydney'),
('Ben', 'Male', 7000, 'New York'),
('Sara', 'Female', 4800, 'Sydney'),
('Valarie', 'Female', 5500, 'New York'),
('James', 'Male', 6500, 'London'),
('Russell', 'Male', 8800, 'London');

/** SELECT SUM OF SALARY FROM TABLE EMPLOYEE **/
SELECT SUM([Salary]) FROM [Sample2].[dbo].[tblEmployee];

/** SELECT MINEMUM OF SALARY FROM TABLE EMPLOYEE **/
SELECT MIN([Salary]) FROM [Sample2].[dbo].[tblEmployee];

/** SELECT MINEMUM OF SALARY FROM TABLE EMPLOYEE **/
SELECT MAX([Salary]) FROM [Sample2].[dbo].[tblEmployee];

/** SELECT COUNT OF RECORDS IN TABLE **/
/** YOU CAN USE *  INSTEAD OF COLUMN NAME BUT FOR PERFORMENCE USE SPECIFIC COLUMN NAME **/
SELECT COUNT([ID]) FROM [Sample2].[dbo].[tblEmployee];


/** SELECT SUM OF SALARY FROM TABLE EMPLOYEE GROUPED BY CITY **/
SELECT [City] , SUM([Salary]) AS [TotalSalary] 
FROM [Sample2].[dbo].[tblEmployee] 
GROUP BY [City];

/** SELECT CITY, GENDER AND SUM OF SALARY FROM TABLE EMPLOYEE GROUPED BY CITY THEN BY GENDER **/
SELECT [City] , [Gender], SUM([Salary]) AS [Total Salary]
FROM [Sample2].[dbo].[tblEmployee] 
GROUP BY [City], [Gender]
ORDER BY [City];

/** SELECT CITY, GENDER, SUM OF SALARY, AND TOTAL COUNT OF EMPLOYEES FROM TABLE EMPLOYE GROUPED BY CITY THEN BY GENDER **/
SELECT [City] , [Gender], SUM([Salary]) AS [Total Salary], COUNT([ID]) AS [Total Employees]
FROM [Sample2].[dbo].[tblEmployee] 
GROUP BY [City], [Gender]
ORDER BY [City];

/** SELECT CITY, GENDER, SUM OF SALARY, AND TOTAL COUNT OF EMPLOYEES FROM TABLE EMPLOYE GROUPED BY CITY THEN BY GENDER **/
/** IMPORTANT: WHEN USING WHERE CLAUSE THE TAPE FROM TABLE RETRIVE ONLY RECORDS THAT MATCH THE CONDITION THEN GROUP THEM**/
SELECT [City] , [Gender], SUM([Salary]) AS [Total Salary], COUNT([ID]) AS [Total Employees]
FROM [Sample2].[dbo].[tblEmployee]
WHERE [Gender] = 'Male'
GROUP BY [City], [Gender]
ORDER BY [City];


/** SELECT CITY, GENDER, SUM OF SALARY, AND TOTAL COUNT OF EMPLOYEES FROM TABLE EMPLOYE GROUPED BY CITY THEN BY GENDER **/
/** IMPORTANT: WHEN USING HAVING CLAUSE THE TAPE FROM TABLE RETRIVE ALL RECORDS THEN GROUP THEM AND ONLY SHOW RECORDS THAT MATCH THE CONDITION**/
SELECT [City] , [Gender], SUM([Salary]) AS [Total Salary], COUNT([ID]) AS [Total Employees]
FROM [Sample2].[dbo].[tblEmployee]
GROUP BY [City], [Gender]
HAVING [Gender] = 'Male'
ORDER BY [City];

/** DARFT **/
/**
	DELETE FROM [Sample2].[dbo].[tblEmployee];
	DBCC CHECKIDENT([tblEmployee] , RESEED, 0);
	DROP TABLE [Sample2].[dbo].[tblEmployee];
**/