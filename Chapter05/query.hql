CREATE DATABASE movieLens; 
USE movieLens;

CREATE EXTERNAL TABLE IF NOT EXISTS movies ( movieId int, title String, genres String)
COMMENT 'This table contains movies'
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '\054'
LINES TERMINATED BY '\n'
STORED AS TEXTFILE;

LOAD DATA INPATH 'abfs://<container name>@<storage account name>.dfs.core.windows.net/<PATH to movies.csv>' overwrite INTO TABLE movies;

select count(distinct movieid) from movies;
