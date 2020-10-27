-- COPY INTO Routes sataset

--Uncomment the 4 lines below to create a stored procedure for data pipeline orchestration                 
--CREATE PROC bulk_load_Routes
--AS
--BEGIN
COPY INTO dbo.Routes
(Airline 1, Airline_ID 2, Source_airport 3, Source_airport_ID 4, Destination_airport 5, Destination_airport_ID 6, Codeshare 7, Stops 8, Equipment 9)
FROM 'https://adfcookbookch3adls.dfs.core.windows.net/flightscontainer/routes.csv'
WITH
(
	FILE_TYPE = 'CSV'
	,MAXERRORS = 0
	,FIELDQUOTE = '"'
	,FIELDTERMINATOR = ';'
	,ERRORFILE = 'https://adfcookbookch3adls.dfs.core.windows.net/flightscontainer/'
	,IDENTITY_INSERT = 'OFF'
)
--END
GO

SELECT TOP 100 * FROM Routes
GO