use [Test]
BULK INSERT [���� ������]
	FROM 'C:\Users\edoch\Desktop\Applications\�����\3 ����\1 �������\text1.txt' 
	WITH (
	FIELDTERMINATOR = '\t',
	ROWTERMINATOR = '\n')
 GO

 use [Test]
SELECT * INTO ���������1 FROM ��������� 
WHERE [��� ����������] <= 3
GO

use [Test]
SELECT * INTO ���������2 FROM ��������� 
WHERE [��� ����������]>2
GO

use [Test]
SELECT * FROM dbo.���������1
UNION
SELECT * FROM dbo.���������2
GO

use[Test]
SELECT * FROM [���������1] WHERE
[��� ����������] IN (SELECT [��� ����������] FROM [���������2])
GO

use[Test]
SELECT * FROM [���������2] WHERE
[��� ����������] NOT IN (SELECT [��� ����������] FROM [���������1])
GO

use[Test]
SELECT * FROM [���������1], [���������2]
GO

