CREATE TABLE [dbo].[PipelineLog](
	PipelineID varchar(100) NULL,
	RunID varchar(100) NULL,
	Status varchar(100) NULL,
	UpdatedAt datetime NULL
)


CREATE PROC [dbo].[InsertPipelineLog]
				(@PipelineID varchar(100), @RunID varchar(100),
                 @Status varchar(100),
                 @UpdatedAt datetime)
AS
INSERT INTO dbo.PipelineLog (PipelineID, RunID, Status, UpdatedAt)
VALUES (@PipelineID, @RunID, @Status, @UpdatedAt)