SELECT [����� �����], COUNT([��� �����]) as [ʳ������ ������]
FROM [���� ������] INNER JOIN [������ ������]
ON [���� ������].[��� �����] = [������ ������].[��� �������]
GROUP BY [����� �����]

SELECT YEAR([���� ������]) as г�, COUNT(���������.[��� ����������])
FROM [������ ������] INNER JOIN ���������
ON [������ ������].[��� �������] = ���������.[��� ����������]
GROUP BY YEAR([���� ������])

USE [Test]
SELECT AVG(DATEDIFF(YEAR, [���� ����������] , CURRENT_TIMESTAMP)) as [������� ��]
, [��'�]
FROM ���������
GROUP BY [��'�]

SELECT TOP 1 DATEDIFF(YEAR, [���� ����������], CURRENT_TIMESTAMP) as ³�,
�������, [��'�]
FROM ��������� ORDER BY ³� DESC

