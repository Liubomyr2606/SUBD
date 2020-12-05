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
SET @error = '���������� ����� ����';
IF (@date1<=@date2) 
BEGIN
CREATE TABLE ���� (�����_����� CHAR(20),
������� INT);
INSERT INTO ���� SELECT [����� �����] ,
COUNT(���������.[��� ����������]) AS �������
FROM (��������� INNER JOIN [������ ������]
ON ���������.[��� ����������]=[������ ������].[��� �������]
INNER JOIN [���� ������]
ON [���� ������].[��� �����] = [������ ������].[��� �������])
WHERE [������ ������].[���� ������] BETWEEN @date1 AND @date2
GROUP BY [����� �����];
END;
ELSE SELECT @error;
END

SELECT �������, [��'�], dbo.FN_ENCRIPTIONS(�������) AS ����
FROM ���������


EXEC CountDate '�����', '2020-05-01', '2020-12-12';
select * from ����

