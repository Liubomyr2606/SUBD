CREATE
TRIGGER ��������_������ ON [���������] 
INSTEAD OF DELETE 
AS
BEGIN
DECLARE @Old INT
SELECT @Old = [��� ����������] FROM deleted
DELETE FROM [������ ������] WHERE [��� �������] = @Old
DELETE FROM ��������� WHERE [��� ����������] = @Old
END

DELETE FROM ��������� WHERE [��� ����������] = 1 ;
SELECT * FROM [������ ������];

CREATE
TRIGGER ������ 
ON ���������
INSTEAD OF INSERT
AS
BEGIN
DECLARE @NEW varchar
SELECT @NEW = ������ FROM inserted
SET @NEW =dbo.FN_ENCRIPTIONS(@NEW)
END

INSERT INTO ��������� 
VALUES (7, '����', '�����','���������',965958365,'����', 15);
SELECT * FROM ���������


CREATE TRIGGER 
��������_�_����� ON �������� 
INSTEAD OF DELETE
AS
BEGIN
DECLARE @id INT
SELECT @id = [��� ���������] FROM deleted
INSERT INTO �����
SELECT * FROM [������ ������]
WHERE [��� �������] = @id
SELECT @id = [��� ���������] FROM deleted
DELETE FROM [������ ������] WHERE [��� �������] = @id
END

DELETE FROM [������ ������] WHERE [��� �������] = 1
SELECT * FROM �����
