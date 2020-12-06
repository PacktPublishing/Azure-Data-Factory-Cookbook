-- Show the status of the data loading

SELECT  t1.[request_id]                           
,       t1.[status]                               
,       t1.resource_class                         
,       t1.command
,       sum(bytes_processed) AS bytes_processed
,       sum(rows_processed) AS rows_processed
FROM    sys.dm_pdw_exec_requests t1
              JOIN sys.dm_pdw_dms_workers t2
                     ON t1.[request_id] = t2.request_id
WHERE [label] = 'COPY : Load [dbo].[Countries] - Flights dataset' OR
    [label] = 'COPY : Load [dbo].[Airlines] - Flights dataset'
and session_id <> session_id() and type = 'WRITER'
GROUP BY t1.[request_id]                           
,       t1.[status]                               
,       t1.resource_class                         
,       t1.command;