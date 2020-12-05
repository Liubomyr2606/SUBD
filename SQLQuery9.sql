SELECT [Назва жанру], COUNT([Код жанру]) as [Кількість фільмів]
FROM [Жанр фільму] INNER JOIN [Прокат фільму]
ON [Жанр фільму].[Код жанру] = [Прокат фільму].[Код прокату]
GROUP BY [Назва жанру]

SELECT YEAR([Дата видачі]) as Рік, COUNT(Орендатор.[Код орендатора])
FROM [Прокат фільму] INNER JOIN Орендатор
ON [Прокат фільму].[Код прокату] = Орендатор.[Код орендатора]
GROUP BY YEAR([Дата видачі])

USE [Test]
SELECT AVG(DATEDIFF(YEAR, [Дата народження] , CURRENT_TIMESTAMP)) as [Середній вік]
, [Ім'я]
FROM Орендатор
GROUP BY [Ім'я]

SELECT TOP 1 DATEDIFF(YEAR, [Дата народження], CURRENT_TIMESTAMP) as Вік,
Прізвище, [Ім'я]
FROM Орендатор ORDER BY Вік DESC

