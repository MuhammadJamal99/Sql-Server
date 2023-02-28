
/** LEFT OUTER SELF JOIN **/
/** Replace NULL VALUES With No Manager Using ISNULL **/
SELECT				[Employee].[Name] AS Employee, ISNULL([Manager].[Name], 'No Manager') AS Manager
FROM				[Sample2].[dbo].[tblEmployee] [Employee]
LEFT OUTER JOIN		[Sample2].[dbo].[tblEmployee] [Manager]
ON					[Employee].[ManagerID] = [Manager].[ID];

/** LEFT OUTER SELF JOIN **/
/** Replace NULL VALUES With No Manager Using COALESCE **/
/** COALESCE IS MORE POWERFUL FROM ISNULL IT CAN ACCEPT AS EXPRESSION AS YOU WANT AND RETURN THE FIRST EXPRESSION THAT NOT NULL **/
SELECT				[Employee].[Name] AS Employee, COALESCE([Manager].[Name], 'No Manager') AS Manager
FROM				[Sample2].[dbo].[tblEmployee] [Employee]
LEFT OUTER JOIN		[Sample2].[dbo].[tblEmployee] [Manager]
ON					[Employee].[ManagerID] = [Manager].[ID];


/** LEFT OUTER SELF JOIN **/
/** Replace NULL VALUES With No Manager Using COALESCE **/
/** CASE WHEN EXPRESSION THEN SOMETHING ELSE SOMETHING END **/
SELECT				[Employee].[Name] AS Employee, CASE WHEN [Manager].[Name] IS NULL THEN 'No Manager' ELSE [Manager].[Name] END AS Manager
FROM				[Sample2].[dbo].[tblEmployee] [Employee]
LEFT OUTER JOIN		[Sample2].[dbo].[tblEmployee] [Manager]
ON					[Employee].[ManagerID] = [Manager].[ID];

/** Draft**/
/**
**/