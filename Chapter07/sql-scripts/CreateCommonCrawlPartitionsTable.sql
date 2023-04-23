CREATE TABLE [dbo].[CommonCrawlPartitions](
    [YearAndMonth][varchar](255) NULL,
    [Path] [varchar](255) NULL,
    [UpdatedAt] [Datetime]
)
INSERT INTO CommonCrawlPartitions (YearAndMonth, Path, UpdatedAt)
VALUES
('01-2022', 'cc-index/collections/CC-MAIN-2022-05/indexes', GetDate()),
('05-2022', 'cc-index/collections/CC-MAIN-2022-21/indexes', GetDate()),
('06-2022', 'cc-index/collections/CC-MAIN-2022-27/indexes', GetDate()),
('08-2022', 'cc-index/collections/CC-MAIN-2022-33/indexes', GetDate()),
('09-2022', 'cc-index/collections/CC-MAIN-2022-40/indexes', GetDate()),
('11-2022', 'cc-index/collections/CC-MAIN-2022-49/indexes', GetDate()),
('06-2023', 'cc-index/collections/CC-MAIN-2023-06/indexes', GetDate()),
('03-2023', 'cc-index/collections/CC-MAIN-2023-14/indexes', GetDate());
