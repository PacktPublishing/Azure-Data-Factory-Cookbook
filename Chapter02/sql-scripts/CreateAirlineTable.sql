SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Airline](
	[ID] [int] NULL,
	[Name] [nvarchar](100) NULL,
	[Code] [nvarchar](10) NULL,
	[Country] [nvarchar](100) NULL
) ON [PRIMARY]
GO