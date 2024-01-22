SELECT TOP (1000) [TranID]
      ,[SenderAcc]
      ,[BeneAccNo]
      ,[BeneIFSC]
      ,[BenePAN]
      ,[TranAmount]
      ,[TranTIme]
      ,[MODE]
      ,[BeneMobile]
      ,[Status]
  FROM [Lab].[dbo].[TransactionDetails]
  begin transaction
  delete from TransactionDetails where TranID='5C865FDFE'
  select * from TransactionDetails
  rollback
  update TransactionDetails set BeneAccNo='234567899' where BeneAccNo='mano'
  commit


