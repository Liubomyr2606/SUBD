USE [Test]
INSERT INTO [Жанр фільму] VALUES (5, 'Детектив');
INSERT INTO [Жанр фільму] VALUES (6, 'Романтика');
GO

USE [Test]
GO
INSERT INTO [Прокат фільму] ([Код прокату], Орендатор)
SELECT [Код орендатора], Прізвище
FROM Орендатор
GO

USE [Test]
BULK INSERT Режиссер
  FROM 'C:\edoch\Desktop\Applications\Універ\3 курс\1 семестр\СУБД\addfile.txt'
  WITH (
  FIELDTERMINATOR = '\t',
  ROWTERMINATOR = '\n')
GO