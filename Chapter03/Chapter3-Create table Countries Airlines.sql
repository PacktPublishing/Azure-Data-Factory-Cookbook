-- Create table Countries, Airlines

CREATE TABLE [dbo].[Countries]
([Name] varchar(50) NOT NULL,
[iso_code] varchar(50) NULL,
[dafif_code] varchar(50) NULL)

CREATE TABLE [dbo].[Airlines]
([Airline_ID] varchar(50) NOT NULL,
[Name] varchar(50) NULL,
[Alias] varchar(50) NULL,
[IATA] varchar(10) NULL,
[ICAO] varchar(10) NULL,
[Callsign] varchar(50) NULL,
[Country] varchar(50) NULL,
[Active] varchar(1) NULL)