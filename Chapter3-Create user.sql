-- Creating user for loading data

CREATE LOGIN adfuser WITH PASSWORD = 'ADF3password';
CREATE USER adfuser FOR LOGIN adfuser;
GRANT CONTROL ON DATABASE::[adfcookbookch1devsqldb] to adfuser;
EXEC sp_addrolemember 'staticrc10', 'adfuser';