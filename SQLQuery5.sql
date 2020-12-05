use [Test]
BULK INSERT [Жанр фільму]
	FROM 'C:\Users\edoch\Desktop\Applications\Універ\3 курс\1 семестр\text1.txt' 
	WITH (
	FIELDTERMINATOR = '\t',
	ROWTERMINATOR = '\n')
 GO

 use [Test]
SELECT * INTO Орендатор1 FROM Орендатор 
WHERE [Код орендатора] <= 3
GO

use [Test]
SELECT * INTO Орендатор2 FROM Орендатор 
WHERE [Код орендатора]>2
GO

use [Test]
SELECT * FROM dbo.Орендатор1
UNION
SELECT * FROM dbo.Орендатор2
GO

use[Test]
SELECT * FROM [Орендатор1] WHERE
[Код орендатора] IN (SELECT [Код орендатора] FROM [Орендатор2])
GO

use[Test]
SELECT * FROM [Орендатор2] WHERE
[Код орендатора] NOT IN (SELECT [Код орендатора] FROM [Орендатор1])
GO

use[Test]
SELECT * FROM [Орендатор1], [Орендатор2]
GO

