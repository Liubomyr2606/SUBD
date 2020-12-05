CREATE FUNCTION FN_ENCRIPTIONS(@str varchar(250))
RETURNS varbinary(500)
AS
BEGIN 
DECLARE @encript varbinary(500)
SET @encript = ENCRYPTBYPASSPHRASE('KEY',@str)
RETURN (@encript)
END
GO

CREATE FUNCTION FN_DECRIPTIONS(@encryp varbinary(500))
RETURNS varchar(250)
AS
BEGIN
DECLARE @decript varbinary(500)
SET @decript = DECRYPTBYPASSPHRASE('KEY',@encryp)
RETURN (@decript)
END
GO

CREATE PROCEDURE CountDate @name varchar(20), @date1 date, @date2 date AS
BEGIN
DECLARE @error VARCHAR(20)
SET @error = 'Некоректно задані дати';
IF (@date1<=@date2) 
BEGIN
CREATE TABLE Дати (Назва_жанру CHAR(20),
кількість INT);
INSERT INTO Дати SELECT [Назва жанру] ,
COUNT(Орендатор.[Код орендатора]) AS кількість
FROM (Орендатор INNER JOIN [Прокат фільму]
ON Орендатор.[Код орендатора]=[Прокат фільму].[Код прокату]
INNER JOIN [Жанр фільму]
ON [Жанр фільму].[Код жанру] = [Прокат фільму].[Код прокату])
WHERE [Прокат фільму].[Дата видачі] BETWEEN @date1 AND @date2
GROUP BY [Назва жанру];
END;
ELSE SELECT @error;
END

SELECT Прізвище, [Ім'я], dbo.FN_ENCRIPTIONS(Телефон) AS Шифр
FROM Орендатор


EXEC CountDate 'Драма', '2020-05-01', '2020-12-12';
select * from Дати

