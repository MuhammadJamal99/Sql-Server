CREATE TABLE People 
(
	Id INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
	JsonData NVARCHAR(MAX) NOT NULL
);

INSERT INTO [People] ([JsonData]) VALUES ('{
	"Name": "Muhammad Jamal",
	"Age": 24,
	"Address": {
		"City": "Beykoz",
		"State": "Istanbul",
		"Country": "Turkey"
	},
	"PhoneNumbers": [
		"+90-110-51214"
	]
}');

SELECT JSON_VALUE([JsonData], '$.Name') AS [Name],
	   JSON_VALUE([JsonData], '$.Age') AS [Age],
	   JSON_VALUE([JsonData], '$.Address.Country') AS [Country],
	   JSON_VALUE([JsonData], '$.PhoneNumbers[0]') AS [PhoneNumbers]
FROM [People];