CREATE TABLE [Hackerrank].[Medium].[Binary_Node_Tree]
(
	N INT NULL,
	P INT NULL
);
INSERT INTO [Hackerrank].[Medium].[Binary_Node_Tree] ([N], [P]) 
VALUES
(1, 2),
(3, 2),
(6, 8),
(9, 8),
(2, 5),
(8, 5),
(5, null);

SELECT [N],
CASE
	WHEN [P] IS NULL THEN 'Root'
	WHEN [N] IN (SELECT P FROM [Hackerrank].[Medium].[Binary_Node_Tree]) THEN 'Inner'
	ELSE 'Leaf'
END AS Position
FROM [Hackerrank].[Medium].[Binary_Node_Tree]
ORDER BY [N];