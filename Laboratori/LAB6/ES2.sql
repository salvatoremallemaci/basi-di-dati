DROP TABLE IMP;
DROP TABLE SUMMARY;

CREATE TABLE IMP
(EMPNO NUMBER(4),
ENAME VARCHAR2(10),
JOB VARCHAR2(10),
SAL NUMBER(7,2),
PRIMARY KEY(EMPNO));


CREATE TABLE SUMMARY
(JOB VARCHAR2(10),
NUM NUMBER,
PRIMARY KEY(JOB));


INSERT INTO IMP(EMPNO, ENAME, JOB, SAL) 
VALUES(1, 'VERDI', 'SECRETARY', 800);

INSERT INTO IMP(EMPNO, ENAME, JOB, SAL) 
VALUES(2, 'ROSSI', 'BANKER', 900);

INSERT INTO IMP(EMPNO, ENAME, JOB, SAL) 
VALUES(3, 'BIANCHI', 'BANKER', 1100);


INSERT INTO SUMMARY(JOB,NUM)
VALUES('SECRETARY',1);

INSERT INTO SUMMARY(JOB,NUM)
VALUES('BANKER',2);

/* Verifica creazione database */
SELECT *
FROM IMP;

SELECT *
FROM SUMMARY;

/*ES.2_1 */

/* Creazione trigger */
CREATE OR REPLACE TRIGGER trigger_1
AFTER INSERT ON IMP
FOR EACH ROW
DECLARE
N NUMBER;
M NUMBER;
BEGIN 
/* Verifico se ci sono impiegati che fanno lo stesso lavoro */
SELECT COUNT(*) INTO N
FROM SUMMARY
WHERE JOB = :NEW.JOB;
/* se non ci sono ripetizioni, aggiungo il lavoro da zero*/
IF(N=0)THEN
INSERT INTO SUMMARY(JOB,NUM)
VALUES(:NEW.JOB,1);
ELSE /* altrimenti aggiorno il numero di impiegato per il lavoro corrente*/
SELECT NUM INTO M
FROM SUMMARY
WHERE JOB = :NEW.JOB;
UPDATE SUMMARY
SET NUM= M+1
WHERE JOB=:NEW.JOB
END IF;
END;
/
INSERT INTO IMP(EMPNO, ENAME, JOB, SAL) VALUES(4, 'NERI', 'CORRIERE', 750);
INSERT INTO IMP(EMPNO, ENAME, JOB, SAL) VALUES(5, 'BLU', 'BANKER', 880);

/* CODICE DI VERIFICA POST TRIGGER */
Select * from IMP;
Select * from SUMMARY;

/* Verifica creazione database */
SELECT *
FROM IMP;

SELECT *
FROM SUMMARY;


/* ES 2.2  */


/* Creazione trigger */

CREATE OR REPLACE TRIGGER trigger_2
AFTER UPDATE OF JOB ON IMP
FOR EACH ROW
DECLARE
N NUMBER;
M NUMBER;
BEGIN
/* Conto quanta gente ha questo nuovo lavoro */
SELECT COUNT(*) INTO N
FROM SUMMARY
WHERE JOB = :NEW.JOB;
/* nessuno aveva questo lavoro */
IF(N=0) THEN
INSERT INTO SUMMARY (JOB,NUM) VALUES (:NEW.JOB,1);
ELSE
/* aggiorna il num per il lavoro in questione */
UPDATE SUMMARY
SET NUM = NUM +1
WHERE JOB = :NEW.JOB;
END IF;
/* aggiorno la tabella summary, in modo che essa sia coerente con l'update */
SELECT NUM INTO M
FROM SUMMARY
WHERE JOB = :OLD.JOB;
IF (M=1) THEN
/* era uno solo l'impiegato per il vecchio lavoro, dunque bisogna cancellare il lavoro */
DELETE FROM SUMMARY 
WHERE JOB = :OLD.JOB;
ELSE 
/* decrementa */
UPDATE SUMMARY
SET NUM = NUM-1
WHERE JOB = :OLD.JOB;
END IF;
END;
/

/* CODICE DI VERIFICA POST TRIGGER */
Select * from IMP;
Select * from SUMMARY;



