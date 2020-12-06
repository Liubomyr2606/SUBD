use [Rozraha (3)]
EXEC sp_helpindex 'Орендатор'
GO

use [Rozraha (3)]
EXEC sp_helpindex 'Прокат'
GO

use [Rozraha (3)]
CREATE INDEX parINDX3 ON Орендатор (Код_орендатора, Телефон); 
EXEC sp_helpindex 'Орендатор'
GO

use [Rozraha (3)]
CREATE INDEX conINDX3 ON Прокат (Код_прокату, Код_орендатора); 
EXEC sp_helpindex 'Прокат'
GO


SET SHOWPLAN_ALL ON;
GO
SELECT Назва_жанру, COUNT(Орендатор.Код_орендатора)as Кількість_фільмів
FROM Орендатор, Жанр_фільму, Прокат WHERE 
Орендатор.Код_орендатора = Прокат.Код_прокату
AND Жанр_фільму.Код_жанру=Прокат.Код_прокату
GROUP BY Назва_жанру
GO
SET SHOWPLAN_ALL OFF;

