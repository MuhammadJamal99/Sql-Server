INSERT INTO [Hackerrank].[Easy].[CITY] ([ID], [NAME], [COUNTRYCODE], [DISTRICT], [POPULATION])
VALUES 
(1613, 'Neyagawa', 'JPN', 'Osaka', 257315),
(1630, 'Ageo', 'JPN', 'Saitama', 209442),
(1681, 'Omuta', 'JPN', 'Fukuoka', 142889),
(1739, 'Tokuyama', 'JPN', 'Yamaguchi', 107078);

SELECT * FROM [Hackerrank].[Easy].[CITY] WHERE [COUNTRYCODE] = 'JPN';