SET storage_engine=InnoDB;
SET FOREIGN_KEY_CHECKS=1;

CREATE DATABASE IF NOT EXISTS CAMPIONATO_CICLISTICO
CHARACTER SET utf8mb4;

USE CAMPIONATO_CICLISTICO;

DROP TABLE IF EXISTS CLASSIFICA_INDIVIDUALE;
DROP TABLE IF EXISTS TAPPA;
DROP TABLE IF EXISTS CICLISTA;
DROP TABLE IF EXISTS SQUADRA;

CREATE TABLE SQUADRA (
    CodS SMALLINT PRIMARY KEY,
    NomeS CHAR(50) NOT NULL,
    AnnoFondazione SMALLINT NOT NULL CHECK (AnnoFondazione>=1900 AND AnnoFondazione<=2000),
    SedeLegale CHAR(50) NULL
);

CREATE TABLE CICLISTA (
    CodC SMALLINT PRIMARY KEY CHECK (CodC>0),
    Nome CHAR(50) NOT NULL ,
    Cognome CHAR(50) NOT NULL ,
    Nazionalita CHAR(50) NOT NULL ,
    CodS SMALLINT NOT NULL CHECK (CodS>0),
    AnnoNascita SMALLINT NOT NULL CHECK (AnnoNascita>=1900 AND AnnoNascita<=2000),
    FOREIGN KEY (CodS) REFERENCES SQUADRA(CodS) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE TAPPA (
    Edizione SMALLINT CHECK (Edizione>0),
    CodT SMALLINT CHECK (CodT>0),
    CittaPartenza CHAR(50) NOT NULL,
    CittaArrivo CHAR(50) NOT NULL,
    Lunghezza SMALLINT NOT NULL CHECK (Lunghezza>=0),
    Dislivello SMALLINT NOT NULL CHECK (Dislivello>=0),
    GradoDifficolta SMALLINT NOT NULL CHECK (GradoDifficolta>=1 AND GradoDifficolta<=10),
    PRIMARY KEY (Edizione,CodT)
);

CREATE TABLE CLASSIFICA_INDIVIDUALE (
    CodC SMALLINT NOT NULL,
    CodT SMALLINT NOT NULL,
    Edizione SMALLINT NOT NULL,
    Posizione SMALLINT NOT NULL CHECK (Posizione>0),
    PRIMARY KEY (CodC,CodT,Edizione),
    FOREIGN KEY (CodC)
        REFERENCES CICLISTA(CodC)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
  FOREIGN KEY (Edizione,CodT)
        REFERENCES TAPPA(Edizione,CodT)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

INSERT INTO SQUADRA(CodS,NomeS,AnnoFondazione,SedeLegale)
VALUES (1,'Saette',1930,NULL);
INSERT INTO SQUADRA(CodS,NomeS,AnnoFondazione,SedeLegale)
VALUES (3,'Fahrrad',1967,NULL);
INSERT INTO SQUADRA(CodS,NomeS,AnnoFondazione,SedeLegale)
VALUES (2,'Razzi',1995,NULL);

INSERT INTO CICLISTA(CodC,Nome,Cognome,Nazionalita,CodS,AnnoNascita)
VALUES (1,'Giuseppe','Rossi','Italiana',1,1967);
INSERT INTO CICLISTA(CodC,Nome,Cognome,Nazionalita,CodS,AnnoNascita)
VALUES (2,'Nick','Cisaf','Tedesca',3,1977);
INSERT INTO CICLISTA(CodC,Nome,Cognome,Nazionalita,CodS,AnnoNascita)
VALUES (3,'Mario','Loren','Italiana',1,1956);

INSERT INTO TAPPA(Edizione,CodT,CittaPartenza,CittaArrivo,Lunghezza,Dislivello,GradoDifficolta)
VALUES (1,1,'Roma','Cerveteri',10000,50,6);
INSERT INTO TAPPA(Edizione,CodT,CittaPartenza,CittaArrivo,Lunghezza,Dislivello,GradoDifficolta)
VALUES (3,2,'Roma','Cerveteri',10000,50,6);
INSERT INTO TAPPA(Edizione,CodT,CittaPartenza,CittaArrivo,Lunghezza,Dislivello,GradoDifficolta)
VALUES (1,3,'Tennsted','Urleben',5600,30,2);
INSERT INTO TAPPA(Edizione,CodT,CittaPartenza,CittaArrivo,Lunghezza,Dislivello,GradoDifficolta)
VALUES (2,1,'Roma','Cerveteri',10000,50,6);

INSERT INTO CLASSIFICA_INDIVIDUALE(CodC,CodT,Edizione,Posizione)
VALUES (2,3,1,1);
INSERT INTO CLASSIFICA_INDIVIDUALE(CodC,CodT,Edizione,Posizione)
VALUES (3,1,1,2);
INSERT INTO CLASSIFICA_INDIVIDUALE(CodC,CodT,Edizione,Posizione)
VALUES (1,1,1,1);
INSERT INTO CLASSIFICA_INDIVIDUALE(CodC,CodT,Edizione,Posizione)
VALUES(1,1,2,4);

/* Query #1 - Interrogazione della base dati realizzata :
Fissato il codice di un ciclista e il codice di una tappa (a vostra scelta), visualizzare l’elenco delle
posizioni ottenute dal ciclista nelle varie edizioni. Per ogni ciclista visualizzare nome, cognome,
nome della squadra di appartenenza e gli attributi identificativi della tappa scelta. Ordinare i
risultati per ordine crescente di edizione. */

SELECT CI.Posizione,C.Nome,C.Cognome, S.NomeS, T.Edizione, T.CodT 
FROM CLASSIFICA_INDIVIDUALE CI, CICLISTA C, SQUADRA S, TAPPA T 
WHERE C.CodS = S.CodS AND C.CodC = CI.CodC AND T.CodT = CI.CodT AND CI.Edizione = T.Edizione AND C.CodC = 1 AND T.CodT = 1 
ORDER BY Edizione ASC;

/* Query #2 - Popolamento della base di dati:
Inserire nella base di dati i dati relativi ad un nuovo ciclista e ad una posizione nella classifica
personale. Gestire opportunamente gli inserimenti tramite l’uso delle transazioni.   */

START TRANSACTION;
INSERT INTO CICLISTA(CodC,Nome,Cognome,Nazionalita,CodS,AnnoNascita)
VALUES(5, "Enrico", "Bianchi", "Italiana", 1, 1980);
INSERT INTO CLASSIFICA_INDIVIDUALE(CodC,CodT,Edizione,Posizione)
VALUES (5, 1, 1, 6);
COMMIT;   