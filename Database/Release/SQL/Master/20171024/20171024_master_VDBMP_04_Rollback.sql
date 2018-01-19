--================================================================================================
-- Description: SQL Release Script
-- Created by:  Data Services
-- Machine: TGC-LT-94JMM12
-- Created on:  01-18-2018 20:15:23
-- Path: /Database/Release/SQL/Patch/20171024/VDBMP
-- Filter: Rollback
--================================================================================================
-- Manifest --
--   DS-1024.01.Alter.Rollback.sql
--   DS-1024.02.Alter.Rollback.sql
-- Manifest --

--================================================================================================
-- /Database/Release/SQL/Patch/20171024/VDBMP/DS-1024.01.Alter.Rollback.sql
PRINT 'Processing DS-1024.01.Alter.Rollback.sql ******** Start'
GO
SET ANSI_NULLS ON;
GO
SET ANSI_PADDING ON;
GO
SET QUOTED_IDENTIFIER ON;
GO
PRINT 'Testing code in the rollback script...'
PRINT 'The 3:22 AM line';
PRINT 'New line';

;
GO
PRINT 'Processing DS-1024.01.Alter.Rollback.sql ******** End'
GO
--================================================================================================
-- /Database/Release/SQL/Patch/20171024/VDBMP/DS-1024.02.Alter.Rollback.sql
PRINT 'Processing DS-1024.02.Alter.Rollback.sql ******** Start'
GO
SET ANSI_NULLS ON;
GO
SET ANSI_PADDING ON;
GO
SET QUOTED_IDENTIFIER ON;
GO
PRINT '02 - Testing code in the rollback script...'
PRINT '3:24 AM';
;
GO
PRINT 'Processing DS-1024.02.Alter.Rollback.sql ******** End'
GO
--================================================================================================
SET ANSI_NULLS ON;
GO
SET ANSI_PADDING ON;
GO
SET QUOTED_IDENTIFIER ON;
GO
--================================================================================================
-- End of Script