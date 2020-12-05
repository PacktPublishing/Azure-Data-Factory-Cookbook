CREATE TABLE [dbo].[CommonCrawlPartitions](
    [YearAndMonth][varchar](255) NULL,
    [Path] [varchar](255) NULL,
    [UpdatedAt] [Datetime]
)
INSERT INTO CommonCrawlPartitions (YearAndMonth, Path, UpdatedAt)
VALUES
('01-2019', 'cc-index/collections/CC-MAIN-2019-04/indexes', GetDate()),
('02-2019', 'cc-index/collections/CC-MAIN-2019-09/indexes', GetDate()),
('03-2019', 'cc-index/collections/CC-MAIN-2019-13/indexes', GetDate()),
('04-2019', 'cc-index/collections/CC-MAIN-2019-18/indexes', GetDate()),
('05-2019', 'cc-index/collections/CC-MAIN-2019-22/indexes', GetDate()),
('06-2019', 'cc-index/collections/CC-MAIN-2019-26/indexes', GetDate()),
('07-2019', 'cc-index/collections/CC-MAIN-2019-30/indexes', GetDate()),
('08-2019', 'cc-index/collections/CC-MAIN-2019-35/indexes', GetDate()),
('09-2019', 'cc-index/collections/CC-MAIN-2019-39/indexes', GetDate()),
('10-2019', 'cc-index/collections/CC-MAIN-2019-43/indexes', GetDate()),
('11-2019', 'cc-index/collections/CC-MAIN-2019-47/indexes', GetDate()),
('12-2019', 'cc-index/collections/CC-MAIN-2019-51/indexes', GetDate());
