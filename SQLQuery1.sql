CREATE TABLE Орендатор (
	Код_орендатора INT NOT NULL,
	Прізвище VARCHAR(20) NOT NULL,
	[Ім'я] VARCHAR(16) NOT NULL,
	[По-батькові] VARCHAR(20) NOT NULL,
	Телефон INT NOT NULL,
	Адреса VARCHAR(20) NOT NULL,
	PRIMARY KEY (Код_орендатора),
);

CREATE TABLE Магазин (
	Номер_магазину INT NOT NULL,
	Назва VARCHAR(20) NOT NULL,
	Адреса VARCHAR(20) NOT NULL,
	Телефон INT NOT NULL,
	Email VARCHAR(50) NOT NULL,
	PRIMARY KEY (Номер_магазину)
);

CREATE TABLE Жанр_фільму (
	Код_жанру INT NOT NULL,
	Назва_жанру VARCHAR(10) NOT NULL,
	PRIMARY KEY (Код_жанру)
);

CREATE TABLE Студія (
	Код_студії INT NOT NULL,
	Назва VARCHAR(30) NOT NULL,
	Розташування VARCHAR(10),
	Сайт VARCHAR(50),
	PRIMARY KEY (Код_студії)
);

CREATE TABLE Режиссер (
	Код_режиссера INT NOT NULL,
	Прізвище VARCHAR(20) NOT NULL,
	[Ім'я] VARCHAR(10) NOT NULL,
	PRIMARY KEY (Код_режиссера)
);

CREATE TABLE Фільм (
	Шифр_фільму INT NOT NULL,
	Назва VARCHAR(20) NOT NULL,
	Рік_випуску INT NOT NULL,
	Код_студії INT NOT NULL,
	Код_жанру INT NOT NULL,
	Постер VARBINARY(Max) NULL,
	Хронометраж INT NOT NULL,
	Ціна MONEY NOT NULL,
	PRIMARY KEY (Шифр_фільму),
	CONSTRAINT FK_Студія FOREIGN KEY (Код_студії) 
	REFERENCES Студія(Код_студії) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT FK_Жанр_фільму FOREIGN KEY (Код_жанру) 
	REFERENCES Жанр_фільму (Код_жанру) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Прокат (
	Код_прокату INT NOT NULL,
	Код_орендатора INT NOT NULL,
	Шифр_фільму INT NOT NULL,
	Дата_видачі DATE NOT NULL,
	Дата_повернення DATE NOT NULL,
	Заборгованість BIT NOT NULL,
	Номер_магазину INT NOT NULL,
	Код_режиссера INT NOT NULL,
	PRIMARY KEY (Код_прокату),
	CONSTRAINT FK_Орендатор FOREIGN KEY (Код_орендатора) 
	REFERENCES Орендатор(Код_орендатора) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT FK_Магазин FOREIGN KEY (Номер_магазину) 
	REFERENCES Магазин(Номер_магазину) ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT FK_Режиссер FOREIGN KEY (Код_режиссера) 
	REFERENCES Режиссер(Код_режиссера) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT FK_Фільм FOREIGN KEY (Шифр_фільму) 
	REFERENCES Фільм(Шифр_фільму) ON DELETE CASCADE ON UPDATE CASCADE );
