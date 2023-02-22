-- create an empty database. Name of the database: 
SET storage_engine=InnoDB;
SET FOREIGN_KEY_CHECKS=1;

CREATE DATABASE IF NOT EXISTS PALESTRA
CHARACTER SET utf8mb4;

-- USE PALESTRA 
USE PALESTRA;


-- drop tables if they already exist
DROP TABLE IF EXISTS PROGRAMMA;
DROP TABLE IF EXISTS CORSI;
DROP TABLE IF EXISTS ISTRUTTORE;

-- create tables

CREATE TABLE ISTRUTTORE (
	CodFisc CHAR(20) ,
	Nome CHAR(50) NOT NULL ,
	Cognome CHAR(50) NOT NULL ,
	DataNascita DATE NOT NULL ,
	Email CHAR(50) NOT NULL ,
	Telefono CHAR(20) NULL ,
	PRIMARY KEY (CodFisc)
);

CREATE TABLE CORSI (
	CodC CHAR(10) ,
	Nome CHAR(50) NOT NULL ,
	Tipo CHAR(50) NOT NULL ,
	Livello SMALLINT NOT NULL,
	PRIMARY KEY (CodC),
	CONSTRAINT chk_Livello CHECK (Livello>=1 and Livello<=4)
);

CREATE TABLE PROGRAMMA (
	CodFisc CHAR(20) NOT NULL ,
	Giorno CHAR(15) NOT NULL ,
	OraInizio TIME NOT NULL ,
	Durata SMALLINT NOT NULL ,
	Sala CHAR(5) NOT NULL,
	CodC CHAR(10) NOT NULL,
	PRIMARY KEY (CodFisc,Giorno,OraInizio),
	FOREIGN KEY (CodFisc)
		REFERENCES ISTRUTTORE(CodFisc) 
		ON DELETE CASCADE
		ON UPDATE CASCADE,
	FOREIGN KEY (CodC)
		REFERENCES CORSI(CodC) 
		ON DELETE CASCADE
		ON UPDATE CASCADE
);
-- Insert data
INSERT INTO ISTRUTTORE (CodFisc,Nome,Cognome,DataNascita,Email, Telefono)
VALUES ('SMTPLA80N31B791Z','Paul','Smith','1980-12-31','p.smith@email.it',NULL);
INSERT INTO ISTRUTTORE (CodFisc,Nome,Cognome,DataNascita,Email, Telefono)
VALUES ('KHNJHN81E30C455Y','John','Johnson','1981-05-30','j.johnson@email.it','+2300110303444');
INSERT INTO ISTRUTTORE (CodFisc,Nome,Cognome,DataNascita,Email, Telefono)
VALUES ('AAAGGG83E30C445A','Peter','Johnson','1981-05-30','p.johnson@email.it','+2300110303444');
INSERT INTO CORSI (CodC,Nome,Tipo,Livello)
VALUES ('CT100','Spinning principianti','Spinning ',1);
INSERT INTO CORSI (CodC,Nome,Tipo,Livello)
VALUES ('CT101','Ginnastica e musica','Attività musicale',2);
INSERT INTO CORSI (CodC,Nome,Tipo,Livello)
VALUES ('CT104','Spinning professionisti','Spinning',4);
INSERT INTO PROGRAMMA (CodFisc,Giorno,OraInizio,Durata,Sala,CodC)
VALUES ('SMTPLA80N31B791Z','Lunedì','10:00',45,'S1','CT100');
INSERT INTO PROGRAMMA (CodFisc,Giorno,OraInizio,Durata,Sala,CodC)
VALUES ('SMTPLA80N31B791Z','Martedì','11:00',45,'S1','CT100');
INSERT INTO PROGRAMMA (CodFisc,Giorno,OraInizio,Durata,Sala,CodC)
VALUES ('SMTPLA80N31B791Z','Martedì','15:00',45,'S2','CT100');
INSERT INTO PROGRAMMA (CodFisc,Giorno,OraInizio,Durata,Sala,CodC)
VALUES ('KHNJHN81E30C455Y','Lunedì','10:00',30,'S2','CT101');
INSERT INTO PROGRAMMA (CodFisc,Giorno,OraInizio,Durata,Sala,CodC)
VALUES ('KHNJHN81E30C455Y','Lunedì','11:30',30,'S2','CT104');
INSERT INTO PROGRAMMA (CodFisc,Giorno,OraInizio,Durata,Sala,CodC)
VALUES ('KHNJHN81E30C455Y','Mercoledì','9:00',60,'S1','CT104');


