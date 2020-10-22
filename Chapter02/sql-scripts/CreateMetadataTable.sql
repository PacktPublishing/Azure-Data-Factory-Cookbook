DROP TABLE [dbo].[FileMetadata]

CREATE TABLE [dbo].[FileMetadata](
	FileName varchar(100) NULL,
	ModifiedAt datetime NULL,
	UpdatedAt datetime NULL
)


CREATE PROC [dbo].[InsertFileMetadata]
				(@FileName varchar(100), @ModifiedAt DateTime, @UpdatedAt datetime)
AS
INSERT INTO dbo.FileMetadata (FileName, ModifiedAt, UpdatedAt)
VALUES (@FileName, @ModifiedAt, @UpdatedAt)