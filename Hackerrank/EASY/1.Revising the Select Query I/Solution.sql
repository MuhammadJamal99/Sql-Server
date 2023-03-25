CREATE TABLE [Hackerrank].[Easy].[CITY] 
(
	[ID] INT,
	[NAME] VARCHAR(17),
	[COUNTRYCODE] VARCHAR(3),
	[DISTRICT] VARCHAR(20),
	[POPULATION] INT
);
INSERT INTO [Hackerrank].[Easy].[CITY] ([ID],[NAME],[COUNTRYCODE],[DISTRICT],[POPULATION]) 
VALUES 
(3878, 'Scottsdale', 'USA', 'Arizona', 202705),
(3965, 'Corona', 'USA', 'California', 124966),
(3973, 'Concord', 'USA', 'California', 121780),
(3977, 'Cedar Rapids', 'USA', 'Iowa', 120758),
(3982, 'Coral Springs', 'USA', 'Florida', 117549);
  
  

SELECT * FROM [Hackerrank].[Easy].[CITY] WHERE [POPULATION] > 100000 AND [COUNTRYCODE] = 'USA';