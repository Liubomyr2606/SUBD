CREATE
TRIGGER видалити_прокат ON [Орендатор] 
INSTEAD OF DELETE 
AS
BEGIN
DECLARE @Old INT
SELECT @Old = [Код орендатора] FROM deleted
DELETE FROM [Прокат фільму] WHERE [Код прокату] = @Old
DELETE FROM Орендатор WHERE [Код орендатора] = @Old
END

DELETE FROM Орендатор WHERE [Код орендатора] = 1 ;
SELECT * FROM [Прокат фільму];

CREATE
TRIGGER Адреса 
ON Орендатор
INSTEAD OF INSERT
AS
BEGIN
DECLARE @NEW varchar
SELECT @NEW = Адреса FROM inserted
SET @NEW =dbo.FN_ENCRIPTIONS(@NEW)
END

INSERT INTO Орендатор 
VALUES (7, 'Ігор', 'Бурий','Андрійович',965958365,'Львів', 15);
SELECT * FROM Орендатор


CREATE TRIGGER 
записати_у_архів ON Режиссер 
INSTEAD OF DELETE
AS
BEGIN
DECLARE @id INT
SELECT @id = [Код режиссера] FROM deleted
INSERT INTO Архів
SELECT * FROM [Прокат фільму]
WHERE [Код прокату] = @id
SELECT @id = [Код режиссера] FROM deleted
DELETE FROM [Прокат фільму] WHERE [Код прокату] = @id
END

DELETE FROM [Прокат фільму] WHERE [Код прокату] = 1
SELECT * FROM Архів
