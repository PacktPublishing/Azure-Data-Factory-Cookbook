CREATE SCHEMA github_repo
GO
CREATE TABLE github_repo.files(
   repo_name      VARCHAR(200) NOT NULL 
  ,ref            VARCHAR(17) NULL
  ,path           VARCHAR(200) NULL
  ,mode           INTEGER  NULL
  ,id             VARCHAR(64) NOT NULL
  ,symlink_target VARCHAR(200) NULL
);
