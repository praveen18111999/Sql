drop table employer1

CREATE TABLE employer1(
    ename VARCHAR(20) primary key, age INT,creationtime DATETIME, Place  VARCHAR(50),status INT);


INSERT INTO employer1 SELECT 'lekha', 20, GETDATE(), 'PCM', 1
insert into employer1 select 'praveen',24,GETDATE(),'KPI',1
insert into employer1 select 'rocky',25,GETDATE(),'HP',1



select * from employer1