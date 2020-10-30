CREATE TABLE ��������� (
	���_���������� INT NOT NULL,
	������� VARCHAR(20) NOT NULL,
	[��'�] VARCHAR(16) NOT NULL,
	[��-�������] VARCHAR(20) NOT NULL,
	������� INT NOT NULL,
	������ VARCHAR(20) NOT NULL,
	PRIMARY KEY (���_����������),
);

CREATE TABLE ������� (
	�����_�������� INT NOT NULL,
	����� VARCHAR(20) NOT NULL,
	������ VARCHAR(20) NOT NULL,
	������� INT NOT NULL,
	Email VARCHAR(50) NOT NULL,
	PRIMARY KEY (�����_��������)
);

CREATE TABLE ����_������ (
	���_����� INT NOT NULL,
	�����_����� VARCHAR(10) NOT NULL,
	PRIMARY KEY (���_�����)
);

CREATE TABLE ����� (
	���_���䳿 INT NOT NULL,
	����� VARCHAR(30) NOT NULL,
	������������ VARCHAR(10),
	���� VARCHAR(50),
	PRIMARY KEY (���_���䳿)
);

CREATE TABLE �������� (
	���_��������� INT NOT NULL,
	������� VARCHAR(20) NOT NULL,
	[��'�] VARCHAR(10) NOT NULL,
	PRIMARY KEY (���_���������)
);

CREATE TABLE Գ��� (
	����_������ INT NOT NULL,
	����� VARCHAR(20) NOT NULL,
	г�_������� INT NOT NULL,
	���_���䳿 INT NOT NULL,
	���_����� INT NOT NULL,
	������ VARBINARY(Max) NULL,
	����������� INT NOT NULL,
	ֳ�� MONEY NOT NULL,
	PRIMARY KEY (����_������),
	CONSTRAINT FK_����� FOREIGN KEY (���_���䳿) 
	REFERENCES �����(���_���䳿) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT FK_����_������ FOREIGN KEY (���_�����) 
	REFERENCES ����_������ (���_�����) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE ������ (
	���_������� INT NOT NULL,
	���_���������� INT NOT NULL,
	����_������ INT NOT NULL,
	����_������ DATE NOT NULL,
	����_���������� DATE NOT NULL,
	������������� BIT NOT NULL,
	�����_�������� INT NOT NULL,
	���_��������� INT NOT NULL,
	PRIMARY KEY (���_�������),
	CONSTRAINT FK_��������� FOREIGN KEY (���_����������) 
	REFERENCES ���������(���_����������) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT FK_������� FOREIGN KEY (�����_��������) 
	REFERENCES �������(�����_��������) ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT FK_�������� FOREIGN KEY (���_���������) 
	REFERENCES ��������(���_���������) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT FK_Գ��� FOREIGN KEY (����_������) 
	REFERENCES Գ���(����_������) ON DELETE CASCADE ON UPDATE CASCADE );
