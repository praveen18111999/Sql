SELECT TOP (1000) [branch_id]
      ,[branch_name]
      ,[branch_add]
  FROM [joins].[dbo].[Branchn]

  
  insert into employees1 select 10,'rahil','hr',89484,5,'chennaia'
  begin transaction
  insert into employees1 select 13,'ahul','cse',89484,2,'chennai3'
  select * from employees1 (nolock) where employee_id=13
  delete from  employees1 where employee_id=13
  commit
  rollback


