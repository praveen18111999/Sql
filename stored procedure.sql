USE [joins]
GO
/****** Object:  StoredProcedure [dbo].[employeradd]    Script Date: 1/7/2024 4:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[employeradd] @Ename varchar (20), @AGE INT, @CREATIONTIME DATETIME,@place varchar(30),@status int 



AS
BEGIN
	insert into employer1 select @Ename,@AGE,@CREATIONTIME,@place,@status
	
	
 
END
select * from employer1

