-- Using SQL on-demand to connect to Parquet file

SELECT
    TOP 100 *
FROM
    OPENROWSET(
        BULK 'https://adfcookbookch3adls.dfs.core.windows.net/flightscontainer/dbo.Routes.parquet',
        FORMAT='PARQUET'
    ) AS [r];
