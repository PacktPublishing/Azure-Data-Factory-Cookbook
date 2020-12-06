-- Create table Routes

CREATE TABLE [dbo].[Routes]
(
    Airline VARCHAR(10) NOT NULL,
    Airline_ID VARCHAR(20) NULL,
    Source_airport VARCHAR(20) NOT NULL,
    Source_airport_ID VARCHAR(50) NULL,
    Destination_airport VARCHAR(20) NOT NULL,
    Destination_airport_ID VARCHAR(50) NULL,
    Codeshare VARCHAR(10) NULL,
    Stops int NOT NULL,
    Equipment VARCHAR(50) NULL
)
WITH
(

    CLUSTERED COLUMNSTORE INDEX
)
GO