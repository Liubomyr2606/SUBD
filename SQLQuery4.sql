USE [Test]
INSERT INTO [���� ������] VALUES (5, '��������');
INSERT INTO [���� ������] VALUES (6, '���������');
GO

USE [Test]
GO
INSERT INTO [������ ������] ([��� �������], ���������)
SELECT [��� ����������], �������
FROM ���������
GO

USE [Test]
BULK INSERT ��������
  FROM 'C:\edoch\Desktop\Applications\�����\3 ����\1 �������\����\addfile.txt'
  WITH (
  FIELDTERMINATOR = '\t',
  ROWTERMINATOR = '\n')
GO