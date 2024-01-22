SELECT TOP (1000) [UserID]
      ,[Password]
      ,[CreationDate]
      ,[Status]
      ,[LastLoginTime]
      ,[PasswordExpiryDate]
  FROM [Lab].[dbo].[LoginDetails]
   logindetails
  select * from LoginDetails

  truncate table logindetails
  drop table #temp
  create table #temp (employee_name varchar(30),password int,creation_date datetime,status int,lastlogintime datetime,passwordexpirydate datetime)
  insert into #temp select 'rocky',3567,GETDATE(),1,GETDATE(),dateadd(month ,3,GETDATE())
  insert into #temp select 'rock',3657,GETDATE(),1,GETDATE(),dateadd(month ,3,GETDATE())
  insert into #temp select 'roky',3587,GETDATE(),1,GETDATE(),dateadd(month ,3,GETDATE())
  insert into  #temp select 'cky',8567,GETDATE(),1,GETDATE(),dateadd(month ,3,GETDATE())
  insert into #temp select 'roy',5677,GETDATE(),1,null,dateadd(month ,3,GETDATE())
ALTER TABLE #temp ADD sno INT IDENTITY(1,1) primary key 
select * from #temp


DECLARE @minsno INT, @maxsno INT
SELECT @minsno = MIN(sno), @maxsno = MAX(sno) FROM #temp

WHILE @maxsno >= @minsno
BEGIN
    PRINT @minsno
    SET @minsno = @minsno + 1
END








  exec sp_columns '#temp';