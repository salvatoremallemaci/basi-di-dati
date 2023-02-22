/*	BASI DI DATI													Mallemaci Salvatore s261358		
	QUADERNO #2     																						*/

/* 1.A  */

SELECT G.Nome,G.Cognome,I.Visite_TOT,I.Durata_TOT
FROM GUIDA G, ( SELECT V.CodGR, SUM(T.Durata) AS Durata_TOT, V.Data, COUNT(*) AS Visite_TOT
				FROM TIPO-VISITA T, VISITA-GUIDATA-EFFETTUTATA V
				WHERE T.CodTipoVisita = V.CodTipoVisita
				GROUP BY V.Data,V.CodGR) AS Info_per_Data I
WHERE G.CodGR = I.CodGR AND
	  G.CodGR NOT IN 
			  ( SELECT CodGR
				FROM VISITA-GUIDATA-EFFETTUTATA V1, GRUPPO G1
				WHERE V1.CodGR = G1.CodGR AND
					  G1.Lingua = 'Francese') ;

/* 1.B  */

SELECT T.Monumento
FROM TIPO-VISITA T,VISITA-GUIDATA-EFFETTUTATA V,GRUPPO G
WHERE T.CodTipoVisita = V.CodTipoVisita AND 
	  G.CodGR = V.CodGR
GROUP BY T.Monumento
HAVING COUNT(*)>=10 AND SUM(G.NumeroPartecipanti) = ( SELECT MAX(Partecipanti_TOT)
													  FROM ( SELECT SUM(NumeroPartecipanti) AS Partecipanti_TOT
													  FROM GRUPPO G2, VISITA-GUIDATA-EFFETTUTATA V2
													  WHERE G2.CodGR = V2.CodGR )
													);
															 
/* 2.A  */

SELECT EV.NomeDisp,EV.NomeLab,COUNT(*)
FROM LABORATORIO L, STUDENTE S,
					( SELECT E.CodiceDisp,D.NomeDisp,D.CodLab,L.NomeLab,E.Matricola
					  FROM DISPOSITIVO D, LABORATORIO L, ESPERIMENTO E 
					  WHERE D.CodLab = L.CodLab AND
							E.CodiceDisp = D.CodiceDisp
					  GROUP BY E.CodiceDisp,D.NomeDisp,D.CodLab,L.NomeLab,E.Matricola
					  HAVING COUNT(*)>=10 ) AS ESPERIMENTO-VALIDO EV
WHERE EV.Matricola = S.Matricola
GROUP BY EV.NomeDisp,EV.NomeLab;		  
					 

/* 2.B  */

SELECT L.CodLab, L.NomeLab, E.Data
FROM LABORATORIO L, ESPERIMENTO E, DISPOSITIVO D
WHERE E.CodiceDisp = D.CodiceDisp AND D.CodLab = L.CodLab
	  E.Categoria = 'Elettronica' AND 
	  E.Data >= TO_DATE('01,06,2019','DD/MM/YYYY') AND
	  E.DATA <= TO_DATE('31,06,2019','DD/MM/YYYY') AND
	  L.CodLab NOT IN
			   ( SELECT L.CodLab
				 FROM LABORATORIO L, STUDENTE S, ESPERIMENTO E, DISPOSITIVO D
				 WHERE E.Matricola = S.Matricola AND
					   E.CodiceDisp = D.CodiceDisp AND
					   D.CodLab = L.CodLab AND
					   S.CorsoDiLaurea != 'Ingegneria Informatica' );
					   
/* 3.A  */

SELECT C.NomeCampo,C.Città,COUNT(DISTINCT I.CodFiscale)
FROM CAMPO-ESTIVO C,ISCRIZIONE-PER-ATTIVITà I,
	 (SELECT I.CodFiscale,I.CodAttività,I.CodCampo
	  FROM ISCRIZIONE-PER-ATTIVITà I, ATTIVITà A
	  WHERE I.CodAttività = A.CodAttività
      GROUP BY I.CodFiscale,I.CodAttività,I.CodCampo
	  HAVING COUNT(DISTINCT I.CodFiscale)>=15 AND COUNT(DISTINCT A.Categoria)>=3 ) AS CAMPO-VALIDO CV
WHERE C.CodCampo = CV.CodCampo AND
	  I.CodFiscale = CV.CodFiscale
GROUP BY C.NomeCampo,C.Città;

/* 3.B  */

SELECT RI.Nome,RI.Cognome,C.NomeCampo
FROM CAMPO-ESTIVO C, ( SELECT R.Nome,R.Cognome,C.NomeCampo,I2.CodAttività
					   FROM RAGAZZO R, CAMPO-ESTIVO C,ISCRIZIONE-PER-ATTIVITà I2
					   WHERE R.CodFiscale = I2.CodFiscale AND
							 I2.CodCampo = C.CodCampo AND
							 R.DataNascita<TO_DATE('01,01,2005','DD/MM/YYYY')
					   GROUP BY R.Nome,R.Cognome,C.NomeCampo,I2.CodAttività
					   HAVING COUNT(DISTINCT I2.CodCampo)>=3 )AS RAGAZZO-IDONEO RI
GROUP BY C.NomeCampo,RI.Nome,RI.Cognome	
HAVING COUNT(*) = ( SELECT COUNT( DISTINCT A.CodAttività)
					FROM ATTIVITà A, ISCRIZIONE-PER-ATTIVITà I
					WHERE A.CodAttività = RI.CodAttività AND
						  I.CodFiscale = RI.CodFiscale );

					  