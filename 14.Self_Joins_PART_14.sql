ALTER TABLE [Sample2].[dbo].[tblEmployee]
ADD FOREIGN KEY([ManagerID]) REFERENCES [Sample2].[dbo].[tblEmployee]([ID]);
/** SELF JOIN IS NOT DIFFERENT TYPE OF JOIN IT CAN CLASSIFY AS ANY OF FOLLOWING: **/
/** INNER JOIN **/
/** OUTER JOIN (LEFT, RIGHT, FULL) **/
/** CROSS JOIN **/

/** INNER SELF JOIN **/
/** SELECT ONLY MATCHES ROWS (INTERSECTED ROWS) FROM TWO TABLES **/
SELECT				[Employee].[Name] AS Employee, [Manager].[Name] AS Manager
FROM				[Sample2].[dbo].[tblEmployee] [Employee]
INNER JOIN			[Sample2].[dbo].[tblEmployee] [Manager]
ON					[Employee].[ManagerID] = [Manager].[ID];


/** LEFT OUTER SELF JOIN **/
/** SELECT ALL ROWS FROM LEFT TABLE **/
SELECT				[Employee].[Name] AS Employee, [Manager].[Name] AS Manager
FROM				[Sample2].[dbo].[tblEmployee] [Employee]
LEFT OUTER JOIN		[Sample2].[dbo].[tblEmployee] [Manager]
ON					[Employee].[ManagerID] = [Manager].[ID];

/** RIGHT OUTER SELF JOIN **/
/** SELECT ALL ROWS FROM RIGHT TABLE **/
SELECT				[Employee].[Name] AS Employee, [Manager].[Name] AS Manager
FROM				[Sample2].[dbo].[tblEmployee] [Employee]
RIGHT OUTER JOIN	[Sample2].[dbo].[tblEmployee] [Manager]
ON					[Employee].[ManagerID] = [Manager].[ID];

/** CROSS SELF JOIN **/
SELECT				[Employee].[Name] AS Employee, [Manager].[Name] AS Manager
FROM				[Sample2].[dbo].[tblEmployee] [Employee]
CROSS JOIN			[Sample2].[dbo].[tblEmployee] [Manager];


/** Draft**/
/**
**/