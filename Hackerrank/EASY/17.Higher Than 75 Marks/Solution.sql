USE [Hackerrank];
GO

CREATE TABLE [Easy].[STUDENTS]
(
 [ID] INT,
 [Name] NVARCHAR(100),
 [Marks] INT
);
INSERT INTO [Easy].[STUDENTS] ([ID],[Name],[Marks]) 
VALUES 
(19,'Samantha',87),
(21,'Julia',96),
(11,'Britney',95),
(32,'Kristeen',100),
(12,'Dyana',55),
(13,'Jenny',66),
(14,'Christene',88),
(15,'Meera',24),
(16,'Priya',76),
(17,'Priyanka',77),
(18,'Paige',74),
(19,'Jane',64),
(21,'Belvet',78),
(31,'Scarlet',80),
(41,'Salma',81),
(51,'Amanda',34),
(61,'Heraldo',94),
(71,'Stuart',99),
(81,'Aamina',77),
(76,'Amina',89),
(91,'Vivek',84),
(17,'Evil',79),
(16,'Devil',76),
(34,'Fanny',75),
(38,'Danny',75);

SELECT [Name] FROM [Hackerrank].[Easy].[STUDENTS]
WHERE [Marks] > 75
ORDER BY RIGHT([Name], 3), [ID] ASC;

