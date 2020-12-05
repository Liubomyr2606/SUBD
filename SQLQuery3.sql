USE [Test]
GO
alter table dbo.Орендатор
add Вік INT 
GO

USE [Test]
GO
alter table dbo.Орендатор
alter column "По-Батькові" CHAR(20) NULL
GO

USE [Test]
GO
alter table dbo.Орендатор
drop column Вік
GO
