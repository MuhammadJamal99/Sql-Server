/** LEFT OUTER SELF JOIN **/
/** Replace NULL VALUES With No Manager Using COALESCE **/
/** COALESCE IS MORE POWERFUL FROM ISNULL IT CAN ACCEPT AS EXPRESSION AS YOU WANT AND RETURN THE FIRST EXPRESSION THAT NOT NULL **/
SELECT				COALESCE([Employee].[FirstName], [Employee].[MiddleName], [Employee].[LastName]) AS Employee, 
					COALESCE([Manager].[FirstName],  [Manager].[MiddleName], [Manager].[LastName], 'No Manager') AS Manager
FROM				[Sample2].[dbo].[tblEmployee] [Employee]
LEFT OUTER JOIN		[Sample2].[dbo].[tblEmployee] [Manager]
ON					[Employee].[ManagerID] = [Manager].[ID];

/** Draft**/
/**
**/