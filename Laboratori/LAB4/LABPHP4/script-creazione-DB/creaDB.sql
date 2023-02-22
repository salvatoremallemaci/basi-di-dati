-- create an empty database. Name of the database: 
-- SET storage_engine=InnoDB;
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

