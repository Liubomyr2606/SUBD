CREATE TABLE Îðåíäàòîð (
	Êîä_îðåíäàòîðà INT NOT NULL,
	Ïð³çâèùå VARCHAR(20) NOT NULL,
	[²ì'ÿ] VARCHAR(16) NOT NULL,
	[Ïî-áàòüêîâ³] VARCHAR(20) NOT NULL,
	Òåëåôîí INT NOT NULL,
	Àäðåñà VARCHAR(20) NOT NULL,
	PRIMARY KEY (Êîä_îðåíäàòîðà),
);

CREATE TABLE Ìàãàçèí (
	Íîìåð_ìàãàçèíó INT NOT NULL,
	Íàçâà VARCHAR(20) NOT NULL,
	Àäðåñà VARCHAR(20) NOT NULL,
	Òåëåôîí INT NOT NULL,
	Email VARCHAR(50) NOT NULL,
	PRIMARY KEY (Íîìåð_ìàãàçèíó)
);

CREATE TABLE Æàíð_ô³ëüìó (
	Êîä_æàíðó INT NOT NULL,
	Íàçâà_æàíðó VARCHAR(10) NOT NULL,
	PRIMARY KEY (Êîä_æàíðó)
);

CREATE TABLE Ñòóä³ÿ (
	Êîä_ñòóä³¿ INT NOT NULL,
	Íàçâà VARCHAR(30) NOT NULL,
	Ðîçòàøóâàííÿ VARCHAR(10),
	Ñàéò VARCHAR(50),
	PRIMARY KEY (Êîä_ñòóä³¿)
);

CREATE TABLE Ðåæèññåð (
	Êîä_ðåæèññåðà INT NOT NULL,
	Ïð³çâèùå VARCHAR(20) NOT NULL,
	[²ì'ÿ] VARCHAR(10) NOT NULL,
	PRIMARY KEY (Êîä_ðåæèññåðà)
);

CREATE TABLE Ô³ëüì (
	Øèôð_ô³ëüìó INT NOT NULL,
	Íàçâà VARCHAR(20) NOT NULL,
	Ð³ê_âèïóñêó INT NOT NULL,
	Êîä_ñòóä³¿ INT NOT NULL,
	Êîä_æàíðó INT NOT NULL,
	Ïîñòåð VARBINARY(Max) NULL,
	Õðîíîìåòðàæ INT NOT NULL,
	Ö³íà MONEY NOT NULL,
	PRIMARY KEY (Øèôð_ô³ëüìó),
	CONSTRAINT FK_Ñòóä³ÿ FOREIGN KEY (Êîä_ñòóä³¿) 
	REFERENCES Ñòóä³ÿ(Êîä_ñòóä³¿) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT FK_Æàíð_ô³ëüìó FOREIGN KEY (Êîä_æàíðó) 
	REFERENCES Æàíð_ô³ëüìó (Êîä_æàíðó) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Ïðîêàò (
	Êîä_ïðîêàòó INT NOT NULL,
	Êîä_îðåíäàòîðà INT NOT NULL,
	Øèôð_ô³ëüìó INT NOT NULL,
	Äàòà_âèäà÷³ DATE NOT NULL,
	Äàòà_ïîâåðíåííÿ DATE NOT NULL,
	Çàáîðãîâàí³ñòü BIT NOT NULL,
	Íîìåð_ìàãàçèíó INT NOT NULL,
	Êîä_ðåæèññåðà INT NOT NULL,
	PRIMARY KEY (Êîä_ïðîêàòó),
	CONSTRAINT FK_Îðåíäàòîð FOREIGN KEY (Êîä_îðåíäàòîðà) 
	REFERENCES Îðåíäàòîð(Êîä_îðåíäàòîðà) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT FK_Ìàãàçèí FOREIGN KEY (Íîìåð_ìàãàçèíó) 
	REFERENCES Ìàãàçèí(Íîìåð_ìàãàçèíó) ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT FK_Ðåæèññåð FOREIGN KEY (Êîä_ðåæèññåðà) 
	REFERENCES Ðåæèññåð(Êîä_ðåæèññåðà) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT FK_Ô³ëüì FOREIGN KEY (Øèôð_ô³ëüìó) 
	REFERENCES Ô³ëüì(Øèôð_ô³ëüìó) ON DELETE CASCADE ON UPDATE CASCADE );
