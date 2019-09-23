USE [msdb]
GO

EXEC msdb.dbo.sp_add_jobschedule
    @job_name = N'CommandLog Cleanup',
    @name = N'CommandLog Cleanup',
    @enabled = 1,
    @freq_type = 16, -- Monthly
    @freq_interval = 1, -- First day of the month
    @freq_subday_type = 1, -- At the specified time
    @freq_subday_interval = 0,
    @freq_relative_interval = 0,
    @freq_recurrence_factor = 1, -- Number of months between executions
    @active_start_date = 20170101,
    @active_end_date = 99991231,
    @active_start_time = 000100, -- 12:01 AM
    @active_end_time = 235959

GO

EXEC msdb.dbo.sp_add_jobschedule
    @job_name = N'DatabaseIntegrityCheck - SYSTEM_DATABASES',
    @name = N'DatabaseIntegrityCheck - SYSTEM_DATABASES',
    @enabled = 1,
    @freq_type = 8, -- Weekly
    @freq_interval = 64, -- Saturday
    @freq_subday_type = 1, -- At the specified time
    @freq_subday_interval = 0,
    @freq_relative_interval = 0,
    @freq_recurrence_factor = 1, -- Number of weeks between executions
    @active_start_date = 20170101,
    @active_end_date = 99991231,
    @active_start_time = 010500, -- 1:05 AM
    @active_end_time = 235959

GO

EXEC msdb.dbo.sp_add_jobschedule
    @job_name = N'DatabaseIntegrityCheck - USER_DATABASES',
    @name = N'DatabaseIntegrityCheck - USER_DATABASES',
    @enabled = 1,
    @freq_type = 8, -- Weekly
    @freq_interval = 64, -- Saturday
    @freq_subday_type = 1, -- At the specified time
    @freq_subday_interval = 0,
    @freq_relative_interval = 0,
    @freq_recurrence_factor = 1, -- Number of weeks between executions
    @active_start_date = 20170101,
    @active_end_date = 99991231,
    @active_start_time = 011000, -- 1:10 AM
    @active_end_time = 235959

GO

EXEC msdb.dbo.sp_add_jobschedule
    @job_name = N'IndexOptimize - USER_DATABASES',
    @name = N'IndexOptimize - USER_DATABASES',
    @enabled = 1,
    @freq_type = 8, -- Weekly
    @freq_interval = 32, -- Friday
    @freq_subday_type = 1, -- At the specified time
    @freq_subday_interval = 0,
    @freq_relative_interval = 0,
    @freq_recurrence_factor = 1, -- Number of weeks between executions
    @active_start_date = 20170101,
    @active_end_date = 99991231,
    @active_start_time = 220500, -- 10:05 PM
    @active_end_time = 235959

GO

EXEC msdb.dbo.sp_add_jobschedule
    @job_name = N'Output File Cleanup',
    @name = N'Output File Cleanup',
    @enabled = 1,
    @freq_type = 16, -- Monthly
    @freq_interval = 1, -- First day of the month
    @freq_subday_type = 1, -- At the specified time
    @freq_subday_interval = 0,
    @freq_relative_interval = 0,
    @freq_recurrence_factor = 1, -- Number of months between executions
    @active_start_date = 20170101,
    @active_end_date = 99991231,
    @active_start_time = 000200, -- 12:02 AM
    @active_end_time = 235959

GO

EXEC msdb.dbo.sp_add_jobschedule
    @job_name = N'sp_purge_jobhistory',
    @name = N'sp_purge_jobhistory',
    @enabled = 1,
    @freq_type = 16, -- Monthly
    @freq_interval = 1, -- First day of the month
    @freq_subday_type = 1, -- At the specified time
    @freq_subday_interval = 0,
    @freq_relative_interval = 0,
    @freq_recurrence_factor = 1, -- Number of months between executions
    @active_start_date = 20170101,
    @active_end_date = 99991231,
    @active_start_time = 000300, -- 12:03 AM
    @active_end_time = 235959

GO
