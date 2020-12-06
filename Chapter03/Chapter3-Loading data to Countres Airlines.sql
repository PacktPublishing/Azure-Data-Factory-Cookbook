-- Loading data

COPY INTO dbo.[Countries] FROM 'https://adfcookbookch3adls.blob.core.windows.net/flightsblobstorage/countries.csv'
WITH
	(
	CREDENTIAL=(IDENTITY= 'Shared Access Signature', SECRET='sp=r&st=2020-07-19T15:29:25Z&se=2020-07-19T23:29:25Z&spr=https&sv=2019-10-10&sr=b&sig=dJ2WrdoraHLRL3L1QJNdh51z6TdzEVi3DDh8GdxZDmo%3D'),
	FIELDTERMINATOR=';'
	)

COPY INTO dbo.[Airlines] FROM 'https://adfcookbookch3adls.blob.core.windows.net/flightsblobstorage/airlines.csv'
WITH
	(
	CREDENTIAL=(IDENTITY= 'Shared Access Signature', SECRET='sp=r&st=2020-07-31T18:39:02Z&se=2020-08-01T02:39:02Z&spr=https&sv=2019-12-12&sr=b&sig=4J%2Fk9M6DBUzGUc51d%2FRCsDLndUMRn0sN6%2FZxlyNQ9SU%3D'),
	FIELDTERMINATOR=';'
	)