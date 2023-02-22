DROP TABLE guida;
DROP TABLE tipo_visita;
DROP TABLE gruppo;
DROP TABLE visita_guidata_effettuata;

CREATE TABLE guida (
  codguida SMALLINT PRIMARY KEY,
  nome VARCHAR(200) NOT NULL,
  cognome VARCHAR(200) NOT NULL,
  nazionalita VARCHAR(200)
);
CREATE TABLE tipo_visita (
  codtipovisita SMALLINT PRIMARY KEY,
  monumento VARCHAR(200),
  durata INTERVAL,
  citta VARCHAR(200) NOT NULL
);
CREATE TABLE gruppo (
  codgr SMALLINT PRIMARY KEY,
  numeropartecipanti SMALLINT NOT NULL,
  lingua VARCHAR(200)
);
CREATE TABLE visita_guidata_effettuata (
  codgr SMALLINT,
  data TIMESTAMP,
  codtipovisita SMALLINT NOT NULL,
  codguida SMALLINT NOT NULL,
  PRIMARY KEY(codgr, data),
  FOREIGN KEY (codgr) REFERENCES gruppo,
  FOREIGN KEY(codtipovisita) REFERENCES tipo_visita,
  FOREIGN KEY(codguida) REFERENCES guida
);
/*
Data for guida TABLE 
*/
INSERT INTO guida (codguida, nome, cognome, nazionalita)
VALUES
  (1, 'Celia', 'Hallex', 'Russia');
INSERT INTO guida (codguida, nome, cognome, nazionalita)
VALUES
  (2, 'Chantalle', 'Paddingdon', 'Czech Republic');
INSERT INTO guida (codguida, nome, cognome, nazionalita)
VALUES
  (3, 'Eldredge', 'Platts', 'China');
INSERT INTO guida (codguida, nome, cognome, nazionalita)
VALUES
  (4, 'Valma', 'MacKeeg', 'Saint Lucia');
INSERT INTO guida (codguida, nome, cognome, nazionalita)
VALUES
  (5, 'Cly', 'Noraway', 'Canada');
INSERT INTO guida (codguida, nome, cognome, nazionalita)
VALUES
  (6, 'Robb', 'Freer', 'Georgia');
INSERT INTO guida (codguida, nome, cognome, nazionalita)
VALUES
  (7, 'Merrel', 'Hans', 'Indonesia');
INSERT INTO guida (codguida, nome, cognome, nazionalita)
VALUES
  (8, 'Ruddy', 'Fraczek', 'Ecuador');
INSERT INTO guida (codguida, nome, cognome, nazionalita)
VALUES
  (9, 'Clovis', 'Spurdens', 'Nigeria');
INSERT INTO guida (codguida, nome, cognome, nazionalita)
VALUES
  (10, 'Parsifal', 'Skyram', 'Brazil');
INSERT INTO guida (codguida, nome, cognome, nazionalita)
VALUES
  (11, 'Tootsie', 'Flello', 'Palestinian Territory');
INSERT INTO guida (codguida, nome, cognome, nazionalita)
VALUES
  (12, 'Esra', 'Peoples', 'Indonesia');
INSERT INTO guida (codguida, nome, cognome, nazionalita)
VALUES
  (13, 'Bord', 'Kewish', 'China');
INSERT INTO guida (codguida, nome, cognome, nazionalita)
VALUES
  (14, 'Elana', 'Glencros', 'Indonesia');
INSERT INTO guida (codguida, nome, cognome, nazionalita)
VALUES
  (15, 'Stephana', 'Vuittet', 'Indonesia');
  /*
              Data fot tipo_visita 
              */
INSERT INTO tipo_visita (codtipovisita, monumento, durata, citta)
VALUES
  (
    1,
    'Ali Baba Goes to Town',
    '4:30',
    'Flor da Mata'
  );
INSERT INTO tipo_visita (codtipovisita, monumento, durata, citta)
VALUES
  (
    2,
    'Return of the Vampire, The',
    '1:58',
    'Rozivka'
  );
INSERT INTO tipo_visita (codtipovisita, monumento, durata, citta)
VALUES
  (3, 'Cruise, The', '5:02', 'Lugang');
INSERT INTO tipo_visita (codtipovisita, monumento, durata, citta)
VALUES
  (4, 'Kiss the Girls', '0:17', 'Vykhino-Zhulebino');
INSERT INTO tipo_visita (codtipovisita, monumento, durata, citta)
VALUES
  (5, 'Vampires', '5:57', 'Ganjun');
INSERT INTO tipo_visita (codtipovisita, monumento, durata, citta)
VALUES
  (6, 'Z', '0:30', 'Huaidao');
INSERT INTO tipo_visita (codtipovisita, monumento, durata, citta)
VALUES
  (7, 'Third Man, The', '5:05', 'Lunyuk Ode');
INSERT INTO tipo_visita (codtipovisita, monumento, durata, citta)
VALUES
  (8, 'Come September', '7:51', 'Pasembon');
INSERT INTO tipo_visita (codtipovisita, monumento, durata, citta)
VALUES
  (9, 'CAST A Deadly Spell', '4:51', 'Qianjin');
INSERT INTO tipo_visita (codtipovisita, monumento, durata, citta)
VALUES
  (10, 'Summer and Smoke', '5:08', 'Krasne');
INSERT INTO tipo_visita (codtipovisita, monumento, durata, citta)
VALUES
  (11, 'Baxter, The', '6:06', 'Baru Timur');
INSERT INTO tipo_visita (codtipovisita, monumento, durata, citta)
VALUES
  (12, 'These Final Hours', '3:39', 'Stockholm');
INSERT INTO tipo_visita (codtipovisita, monumento, durata, citta)
VALUES
  (
    13,
    'I''m Gonna Explode (a.k.a. I''m Going to Explode) (Voy a explotar)',
    '2:33',
    'Bertoua'
  );
INSERT INTO tipo_visita (codtipovisita, monumento, durata, citta)
VALUES
  (14, 'Music IN the Air', '0:06', 'Hlusk');
INSERT INTO tipo_visita (codtipovisita, monumento, durata, citta)
VALUES
  (
    15,
    '3 Sailors and a Girl (Three Sailors and a Girl)',
    '4:58',
    'Nentón'
  );
  /*
            Data for gruppo
            */
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (1, 3, 'Tamil');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (2, 20, 'West Frisian');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (3, 19, 'Albanian');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (4, 8, 'Bosnian');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (5, 10, 'Irish Gaelic');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (6, 11, 'Khmer');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (7, 17, 'Amharic');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (8, 18, 'Icelandic');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (9, 10, 'Georgian');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (10, 10, 'Chinese');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (11, 5, 'Amharic');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (12, 12, 'Malagasy');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (13, 11, 'Luxembourgish');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (14, 7, 'Haitian Creole');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (15, 17, 'Tswana');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (16, 14, 'Italian');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (17, 19, 'Czech');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (18, 11, 'Tajik');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (19, 20, 'Catalan');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (20, 7, 'Armenian');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (21, 10, 'Belarusian');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (22, 12, 'Polish');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (23, 5, 'Quechua');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (24, 2, 'Hebrew');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (25, 18, 'Swati');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (26, 14, 'Portuguese');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (27, 16, 'Malay');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (28, 19, 'Arabic');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (29, 1, 'Catalan');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (30, 15, 'Tswana');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (31, 18, 'Punjabi');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (32, 16, 'Kazakh');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (33, 20, 'Telugu');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (34, 2, 'Dzongkha');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (35, 14, 'Azeri');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (36, 13, 'Persian');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (37, 3, 'Swedish');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (38, 15, 'Georgian');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (39, 19, 'Bislama');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (40, 14, 'West Frisian');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (41, 20, 'Tajik');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (42, 1, 'Danish');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (43, 8, 'M�?ori');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (44, 1, 'Filipino');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (45, 16, 'Tajik');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (46, 9, 'Kashmiri');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (47, 8, 'Oriya');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (48, 17, 'Armenian');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (49, 3, 'Albanian');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (50, 16, 'Sotho');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (51, 15, 'Filipino');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (52, 4, 'Papiamento');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (53, 14, 'Belarusian');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (54, 1, 'Guaraní');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (55, 19, 'Norwegian');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (56, 1, 'Ndebele');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (57, 20, 'Spanish');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (58, 16, 'Malay');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (59, 17, 'Quechua');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (60, 11, 'Swedish');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (61, 19, 'Luxembourgish');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (62, 2, 'Italian');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (63, 3, 'Mongolian');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (64, 5, 'Finnish');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (65, 10, 'Kazakh');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (66, 7, 'Assamese');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (67, 13, 'English');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (68, 3, 'Norwegian');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (69, 3, 'Hindi');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (70, 1, 'Croatian');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (71, 11, 'Czech');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (72, 16, 'Portuguese');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (73, 16, 'Marathi');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (74, 14, 'Swati');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (75, 18, 'Assamese');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (76, 7, 'Hiri Motu');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (77, 11, 'Bislama');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (78, 3, 'Moldovan');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (79, 13, 'Pashto');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (80, 5, 'Swahili');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (81, 11, 'Haitian Creole');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (82, 9, 'Northern Sotho');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (83, 9, 'Dari');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (84, 8, 'Hungarian');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (85, 17, 'Tok Pisin');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (86, 5, 'Dhivehi');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (87, 14, 'Croatian');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (88, 1, 'Moldovan');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (89, 10, 'Polish');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (90, 20, 'German');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (91, 2, 'German');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (92, 7, 'Azeri');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (93, 9, 'Montenegrin');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (94, 6, 'Papiamento');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (95, 2, 'Tajik');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (96, 13, 'Dutch');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (97, 18, 'Irish Gaelic');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (98, 14, 'Ndebele');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (99, 18, 'Maltese');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (100, 9, 'Dhivehi');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (101, 19, 'Tok Pisin');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (102, 7, 'Pashto');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (103, 6, 'Northern Sotho');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (104, 15, 'Gagauz');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (105, 12, 'Malay');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (106, 11, 'Indonesian');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (107, 17, 'Malay');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (108, 7, 'Tok Pisin');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (109, 15, 'Moldovan');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (110, 7, 'Kannada');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (111, 6, 'English');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (112, 10, 'Croatian');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (113, 17, 'Gujarati');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (114, 14, 'Fijian');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (115, 20, 'Tetum');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (116, 13, 'Somali');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (117, 11, 'Tswana');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (118, 10, 'Romanian');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (119, 15, 'Sotho');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (120, 6, 'Chinese');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (121, 20, 'Georgian');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (122, 5, 'Afrikaans');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (123, 9, 'Tetum');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (124, 5, 'Assamese');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (125, 13, 'Kashmiri');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (126, 6, 'Ndebele');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (127, 6, 'Kyrgyz');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (128, 1, 'Kannada');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (129, 19, 'Danish');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (130, 2, 'Danish');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (131, 17, 'Marathi');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (132, 7, 'Japanese');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (133, 6, 'Mongolian');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (134, 18, 'Finnish');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (135, 2, 'Malayalam');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (136, 5, 'Tsonga');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (137, 10, 'Albanian');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (138, 7, 'English');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (139, 8, 'Greek');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (140, 2, 'Yiddish');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (141, 18, 'Tajik');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (142, 16, 'Italian');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (143, 19, 'Tsonga');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (144, 11, 'Croatian');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (145, 13, 'French');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (146, 8, 'Nepali');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (147, 4, 'Icelandic');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (148, 6, 'Arabic');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (149, 14, 'Thai');
INSERT INTO gruppo (codgr, numeropartecipanti, lingua)
VALUES
  (150, 7, 'Danish');
  /*
          Data for visita_guidata_effettuata
          */
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (110, '2020-02-11 06:05:35', 14, 7);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (106, '2019-12-11 16:36:48', 14, 7);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (137, '2019-06-07 04:10:00', 1, 4);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (147, '2019-08-22 05:14:55', 9, 1);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (60, '2019-07-24 01:20:49', 9, 13);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (6, '2019-11-24 08:52:13', 12, 11);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (71, '2020-02-22 01:46:22', 9, 8);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (148, '2019-09-30 22:16:15', 10, 12);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (105, '2019-12-20 14:49:14', 1, 9);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (78, '2019-08-10 10:05:58', 5, 9);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (74, '2019-05-06 08:49:58', 13, 12);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (37, '2020-02-22 08:47:31', 1, 13);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (31, '2020-01-03 04:44:34', 2, 1);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (8, '2019-11-20 10:30:32', 5, 4);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (70, '2019-10-24 18:26:44', 1, 15);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (115, '2019-06-29 21:56:59', 2, 7);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (116, '2020-02-23 23:03:05', 10, 8);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (116, '2019-06-04 22:05:49', 4, 5);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (105, '2020-01-10 22:35:33', 7, 11);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (108, '2020-02-12 04:01:07', 4, 10);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (136, '2019-05-01 10:50:28', 15, 5);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (88, '2020-01-15 14:03:00', 8, 4);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (81, '2019-07-28 23:18:18', 14, 2);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (16, '2019-07-17 09:27:16', 12, 12);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (83, '2019-09-13 18:44:29', 5, 13);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (134, '2019-12-31 12:37:04', 14, 6);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (92, '2019-06-29 10:54:06', 5, 2);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (1, '2019-07-09 17:06:05', 8, 4);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (24, '2019-06-02 03:46:18', 14, 1);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (21, '2020-01-20 17:19:34', 14, 12);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (145, '2020-01-02 15:40:43', 15, 11);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (45, '2020-01-14 10:28:45', 9, 12);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (116, '2020-02-05 17:01:19', 3, 5);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (70, '2020-01-03 21:39:18', 14, 8);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (56, '2020-03-24 20:24:51', 13, 9);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (70, '2019-09-08 05:38:42', 8, 12);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (137, '2020-02-20 08:23:25', 15, 14);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (127, '2019-08-09 21:21:07', 5, 2);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (70, '2019-05-12 17:11:19', 14, 7);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (84, '2020-04-23 23:11:26', 9, 14);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (32, '2019-09-13 08:07:40', 3, 5);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (124, '2019-10-27 01:10:49', 12, 5);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (90, '2020-04-06 01:22:19', 5, 1);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (112, '2019-06-02 13:56:31', 7, 12);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (141, '2019-05-23 20:55:49', 1, 14);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (99, '2019-05-17 06:54:40', 6, 3);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (130, '2019-10-06 20:41:47', 2, 5);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (78, '2019-07-18 20:00:43', 3, 11);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (29, '2019-11-19 23:41:29', 14, 11);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (50, '2019-08-17 22:26:30', 11, 7);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (100, '2019-11-17 16:53:16', 12, 3);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (4, '2019-05-24 22:50:09', 2, 8);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (92, '2019-12-26 13:34:43', 3, 13);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (6, '2019-10-29 04:56:32', 14, 14);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (132, '2019-11-09 22:18:54', 3, 3);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (48, '2020-03-25 03:15:45', 6, 13);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (105, '2019-04-29 02:20:24', 2, 15);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (67, '2020-01-23 17:52:33', 10, 12);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (28, '2019-12-23 05:30:21', 3, 11);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (114, '2020-04-22 20:53:46', 10, 5);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (62, '2019-06-10 06:16:06', 10, 13);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (67, '2019-08-09 16:17:39', 6, 4);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (10, '2019-08-10 07:08:21', 1, 1);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (96, '2020-02-01 13:43:39', 8, 1);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (42, '2019-08-30 16:38:42', 2, 9);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (147, '2019-08-15 12:48:55', 15, 4);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (135, '2019-11-02 21:12:44', 12, 13);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (7, '2019-12-15 04:33:59', 10, 11);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (83, '2020-01-29 05:12:05', 13, 12);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (146, '2019-07-08 21:02:40', 6, 13);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (139, '2020-04-09 03:56:26', 12, 5);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (19, '2019-11-08 03:22:46', 6, 13);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (54, '2019-12-12 08:45:16', 6, 9);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (23, '2019-05-20 15:34:51', 15, 3);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (113, '2019-11-21 14:03:19', 15, 3);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (42, '2019-05-29 09:20:41', 1, 8);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (82, '2019-12-16 20:03:52', 15, 1);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (61, '2019-12-03 01:53:08', 1, 3);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (10, '2019-09-11 18:10:30', 9, 3);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (45, '2019-10-03 02:23:51', 15, 5);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (7, '2019-07-07 19:52:26', 4, 6);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (145, '2020-03-30 13:58:23', 15, 7);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (56, '2019-06-24 04:59:18', 14, 1);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (55, '2019-12-02 17:07:00', 3, 11);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (36, '2019-08-17 08:02:12', 5, 10);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (134, '2020-02-25 12:48:43', 2, 2);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (2, '2019-11-06 17:35:47', 11, 7);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (95, '2019-06-22 04:52:36', 14, 2);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (2, '2020-02-04 20:45:38', 10, 13);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (68, '2019-06-17 16:29:15', 2, 2);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (60, '2019-06-01 06:20:15', 5, 10);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (83, '2019-05-11 01:22:21', 8, 7);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (144, '2019-12-04 15:33:44', 5, 7);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (44, '2019-05-12 00:22:01', 1, 5);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (126, '2019-11-20 17:07:43', 4, 2);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (58, '2019-06-17 15:05:16', 3, 2);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (97, '2019-07-11 13:59:58', 8, 12);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (140, '2020-03-28 05:14:38', 9, 11);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (78, '2020-02-12 12:29:47', 13, 2);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (94, '2019-07-03 13:22:20', 2, 11);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (146, '2019-06-07 21:25:11', 4, 8);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (4, '2019-12-26 09:27:30', 13, 1);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (11, '2020-02-23 22:13:40', 4, 1);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (95, '2019-08-15 19:04:24', 1, 15);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (85, '2019-05-17 20:13:48', 13, 2);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (116, '2019-07-14 15:50:19', 10, 15);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (15, '2020-03-16 22:45:55', 11, 4);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (88, '2019-09-18 03:57:33', 5, 9);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (70, '2019-12-27 09:25:38', 1, 7);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (65, '2020-03-28 19:44:32', 13, 2);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (91, '2020-03-25 03:43:10', 9, 11);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (99, '2019-12-11 22:29:58', 5, 4);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (31, '2019-11-03 08:53:55', 4, 11);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (136, '2019-06-21 05:42:11', 5, 4);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (53, '2019-06-09 01:36:55', 4, 13);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (122, '2020-02-01 19:43:19', 1, 11);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (39, '2020-01-19 18:36:15', 7, 10);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (111, '2019-08-24 19:52:27', 11, 1);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (38, '2019-10-26 05:24:31', 7, 5);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (41, '2019-12-04 18:13:01', 8, 7);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (22, '2020-03-04 16:44:46', 9, 11);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (56, '2020-01-01 19:20:38', 14, 1);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (122, '2019-10-31 20:31:22', 15, 6);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (83, '2019-06-30 00:41:31', 2, 9);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (87, '2019-05-17 07:33:44', 2, 13);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (75, '2019-09-13 06:30:03', 1, 4);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (131, '2020-01-29 22:49:02', 3, 11);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (145, '2019-06-26 07:43:49', 1, 1);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (53, '2019-08-10 18:22:07', 13, 13);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (147, '2019-06-25 15:58:51', 13, 6);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (141, '2019-07-12 21:30:59', 11, 4);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (124, '2019-11-20 11:03:31', 14, 15);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (96, '2020-04-02 03:56:15', 1, 11);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (139, '2019-09-27 15:01:52', 1, 8);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (56, '2020-04-14 03:03:25', 13, 4);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (20, '2019-06-21 08:50:24', 6, 2);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (88, '2019-07-23 11:50:43', 2, 15);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (82, '2020-04-08 23:49:05', 13, 2);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (19, '2020-01-18 23:45:30', 12, 3);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (27, '2020-03-21 00:24:23', 3, 8);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (123, '2019-08-11 13:31:25', 6, 9);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (106, '2019-06-07 21:43:14', 11, 4);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (110, '2020-01-11 04:49:36', 10, 11);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (142, '2019-06-23 09:08:48', 2, 6);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (61, '2019-04-29 05:25:32', 13, 10);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (44, '2019-12-22 23:33:22', 11, 13);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (62, '2019-10-18 13:31:15', 10, 8);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (134, '2020-04-13 16:36:35', 15, 1);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (146, '2020-02-07 01:03:22', 1, 11);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (123, '2019-06-15 15:10:44', 9, 10);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (35, '2020-01-04 16:44:31', 4, 13);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (57, '2019-10-14 12:43:31', 12, 10);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (31, '2019-07-13 05:58:30', 3, 9);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (147, '2019-06-20 06:36:39', 2, 4);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (68, '2020-02-11 08:58:32', 11, 1);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (70, '2019-05-18 06:06:15', 7, 1);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (51, '2019-06-25 20:57:51', 14, 6);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (149, '2019-11-04 20:28:56', 13, 4);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (48, '2019-08-27 16:14:01', 10, 7);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (119, '2019-07-21 14:36:28', 1, 14);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (71, '2019-10-30 17:44:55', 8, 12);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (97, '2019-09-02 14:06:20', 6, 5);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (83, '2019-09-12 15:32:36', 13, 10);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (113, '2019-08-02 08:13:55', 1, 9);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (48, '2019-12-11 15:26:48', 15, 1);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (67, '2019-09-08 04:30:39', 3, 15);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (108, '2020-04-04 19:59:57', 12, 4);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (128, '2020-03-23 01:50:10', 2, 2);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (83, '2019-08-13 00:19:06', 1, 9);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (51, '2019-07-01 13:37:22', 8, 11);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (125, '2019-10-23 05:26:24', 6, 14);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (139, '2019-08-08 08:01:33', 14, 13);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (133, '2020-03-17 12:17:15', 10, 8);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (70, '2020-04-23 22:46:48', 3, 7);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (109, '2019-10-30 10:00:56', 3, 15);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (24, '2019-10-10 21:35:00', 9, 11);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (55, '2019-05-23 06:11:26', 10, 11);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (142, '2019-08-27 15:10:11', 11, 5);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (85, '2019-10-28 05:12:24', 12, 9);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (128, '2020-02-17 07:16:29', 5, 14);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (139, '2020-03-16 06:04:10', 9, 12);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (69, '2019-06-07 13:32:48', 7, 5);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (117, '2020-02-20 20:34:34', 9, 11);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (89, '2019-07-14 10:41:23', 9, 14);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (111, '2019-12-26 15:43:31', 7, 14);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (47, '2019-12-15 02:54:28', 7, 3);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (141, '2019-12-28 18:24:01', 8, 14);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (45, '2019-08-23 22:30:56', 14, 13);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (138, '2019-11-14 10:49:15', 6, 11);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (91, '2019-10-16 20:35:26', 7, 8);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (8, '2019-09-09 14:14:50', 3, 9);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (38, '2020-02-12 07:37:47', 7, 12);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (17, '2019-12-21 14:05:46', 3, 1);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (14, '2019-10-17 08:25:11', 11, 13);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (31, '2019-11-17 12:45:12', 7, 1);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (45, '2019-12-14 07:32:45', 3, 2);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (29, '2019-11-20 12:56:29', 8, 7);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (89, '2020-01-30 22:23:46', 6, 5);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (76, '2020-03-20 09:31:33', 13, 13);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (4, '2019-11-03 07:48:45', 6, 6);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (76, '2020-02-11 02:44:11', 14, 4);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (119, '2020-01-04 10:17:09', 7, 4);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (7, '2019-05-08 10:17:02', 1, 8);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (73, '2019-08-06 17:44:04', 15, 10);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (117, '2020-01-10 06:07:34', 2, 7);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (49, '2019-05-31 08:58:10', 14, 5);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (129, '2019-05-12 03:30:10', 10, 8);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (41, '2019-11-25 19:06:04', 7, 13);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (131, '2019-07-12 21:02:19', 5, 11);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (45, '2019-07-14 23:17:11', 1, 5);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (48, '2019-12-08 11:07:30', 12, 5);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (1, '2019-12-31 01:22:41', 2, 1);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (98, '2019-05-13 02:57:54', 2, 14);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (33, '2020-03-25 02:51:55', 1, 2);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (139, '2019-10-12 20:31:20', 2, 10);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (8, '2020-02-21 22:33:53', 9, 1);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (32, '2019-07-05 14:22:12', 5, 6);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (40, '2019-11-21 15:55:45', 4, 11);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (80, '2019-11-27 05:19:40', 12, 11);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (89, '2019-08-21 19:32:03', 14, 7);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (94, '2019-05-29 21:59:07', 14, 15);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (63, '2019-10-19 09:05:07', 5, 8);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (46, '2019-10-24 03:11:21', 7, 5);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (43, '2019-12-31 02:52:25', 11, 9);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (134, '2020-02-24 18:22:45', 4, 7);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (17, '2019-07-14 22:31:54', 4, 8);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (148, '2019-07-05 08:47:28', 3, 12);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (80, '2019-05-18 05:04:10', 11, 5);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (30, '2020-04-10 07:29:58', 3, 14);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (102, '2019-07-19 10:09:21', 13, 11);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (103, '2019-12-31 23:56:56', 4, 9);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (47, '2019-08-31 09:09:23', 15, 14);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (44, '2020-01-06 12:05:00', 1, 13);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (50, '2019-08-22 01:05:47', 4, 15);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (64, '2019-09-05 18:06:58', 1, 2);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (91, '2019-08-27 23:13:34', 10, 14);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (73, '2019-05-28 14:17:38', 10, 1);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (17, '2019-10-29 18:07:11', 10, 9);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (25, '2019-08-01 02:12:26', 5, 14);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (54, '2020-04-21 00:44:08', 12, 11);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (71, '2020-01-04 06:20:12', 15, 15);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (9, '2019-09-17 22:26:17', 8, 4);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (20, '2019-10-12 15:32:29', 6, 7);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (104, '2019-09-16 07:17:35', 8, 11);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (143, '2019-07-05 23:27:53', 6, 11);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (71, '2020-01-16 17:08:33', 5, 8);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (84, '2019-08-14 18:27:05', 9, 11);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (135, '2019-09-10 16:05:41', 2, 2);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (132, '2019-09-14 08:18:54', 9, 13);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (116, '2020-04-02 07:36:50', 14, 12);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (82, '2020-03-06 22:39:02', 8, 5);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (148, '2019-12-05 14:09:19', 1, 7);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (91, '2019-05-28 08:19:17', 11, 11);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (14, '2019-05-11 14:28:30', 6, 15);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (36, '2019-05-22 08:55:14', 7, 15);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (19, '2019-11-29 02:49:59', 4, 15);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (106, '2019-12-02 02:51:36', 14, 15);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (53, '2020-01-30 13:01:05', 1, 13);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (87, '2019-08-28 23:55:49', 7, 13);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (146, '2020-04-01 08:19:04', 3, 10);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (62, '2019-06-04 17:02:59', 6, 7);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (132, '2019-08-10 19:18:50', 15, 7);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (98, '2020-03-09 06:25:18', 10, 14);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (54, '2019-05-11 06:59:50', 9, 3);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (86, '2020-01-14 22:50:38', 4, 13);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (123, '2019-06-21 23:35:07', 5, 5);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (39, '2019-12-11 18:07:40', 4, 6);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (143, '2019-09-13 01:15:30', 13, 3);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (48, '2020-04-16 18:56:47', 2, 10);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (62, '2020-02-25 23:48:13', 9, 10);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (91, '2019-10-14 22:15:55', 11, 11);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (59, '2019-11-12 03:45:38', 6, 2);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (148, '2019-07-28 10:57:30', 5, 5);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (24, '2019-12-01 12:36:43', 3, 3);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (113, '2019-11-17 21:52:29', 8, 5);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (68, '2019-08-19 14:04:50', 3, 10);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (44, '2019-06-30 16:55:57', 7, 13);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (119, '2020-01-19 12:10:20', 13, 11);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (20, '2020-03-08 02:55:28', 5, 2);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (86, '2020-03-04 19:18:46', 12, 5);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (108, '2020-01-20 02:04:52', 4, 10);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (119, '2019-05-10 15:41:51', 7, 1);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (66, '2019-09-03 04:12:38', 1, 7);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (121, '2019-11-10 00:32:18', 13, 5);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (127, '2019-12-10 21:10:04', 11, 13);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (25, '2019-11-04 17:44:34', 3, 5);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (82, '2019-06-19 12:17:30', 15, 1);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (129, '2020-01-21 13:15:32', 8, 9);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (129, '2019-06-18 14:24:54', 14, 4);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (99, '2019-06-12 07:02:37', 10, 14);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (136, '2020-02-24 18:41:31', 7, 5);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (141, '2019-12-16 19:33:00', 13, 5);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (132, '2019-08-03 18:39:45', 13, 7);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (73, '2020-04-02 04:52:50', 15, 14);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (39, '2020-01-16 16:16:36', 10, 15);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (36, '2019-12-03 21:02:43', 5, 6);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (106, '2019-07-29 08:45:54', 6, 1);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (80, '2019-07-24 04:37:37', 6, 12);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (35, '2019-08-09 00:13:01', 9, 14);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (96, '2019-10-15 14:57:48', 4, 7);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (2, '2019-08-08 02:20:44', 13, 1);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (113, '2019-04-26 17:28:59', 9, 14);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (78, '2019-07-11 20:31:30', 3, 9);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (99, '2019-10-02 21:03:31', 8, 14);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (92, '2019-08-02 16:40:55', 12, 1);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (95, '2019-09-11 15:57:18', 14, 11);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (129, '2020-02-25 21:23:48', 11, 4);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (117, '2019-10-27 19:43:55', 10, 5);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (87, '2019-11-17 15:37:42', 8, 3);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (87, '2020-03-04 10:37:21', 7, 4);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (3, '2019-05-06 07:58:07', 11, 1);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (146, '2019-06-28 07:58:28', 10, 5);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (119, '2019-05-07 16:22:18', 7, 1);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (101, '2019-05-27 21:48:13', 9, 9);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (138, '2019-08-08 10:42:24', 7, 11);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (16, '2020-03-10 11:40:52', 3, 9);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (145, '2020-04-15 05:59:33', 9, 5);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (56, '2019-12-04 20:24:17', 7, 15);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (106, '2020-03-01 13:26:54', 1, 8);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (91, '2019-07-18 08:03:47', 12, 3);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (39, '2019-06-02 14:11:56', 12, 4);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (87, '2019-05-28 18:33:45', 2, 5);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (147, '2020-02-04 07:44:41', 3, 9);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (138, '2020-01-01 23:19:02', 13, 14);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (86, '2020-04-07 13:26:36', 13, 12);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (11, '2019-10-16 14:24:17', 15, 6);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (57, '2019-08-27 00:10:00', 7, 15);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (96, '2019-12-25 09:59:51', 6, 13);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (84, '2019-07-10 21:53:57', 5, 14);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (140, '2020-04-07 01:50:33', 2, 10);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (107, '2019-05-09 07:56:56', 13, 15);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (43, '2019-10-08 09:36:14', 12, 13);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (34, '2019-12-07 07:29:16', 8, 10);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (49, '2019-07-06 08:04:19', 13, 15);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (145, '2020-04-18 22:29:26', 9, 2);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (136, '2019-11-28 08:43:22', 3, 2);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (22, '2019-11-05 11:09:50', 3, 2);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (23, '2019-11-08 21:19:43', 13, 4);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (36, '2020-01-02 22:03:10', 7, 6);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (113, '2020-03-13 13:04:45', 14, 2);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (138, '2020-02-14 23:51:18', 9, 6);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (116, '2019-08-23 18:47:39', 13, 9);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (128, '2019-08-04 03:59:43', 7, 9);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (28, '2019-11-26 22:14:32', 8, 2);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (119, '2020-03-25 00:48:50', 4, 10);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (88, '2019-12-16 20:37:19', 8, 5);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (54, '2019-06-15 20:14:02', 6, 5);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (86, '2020-02-19 01:05:12', 11, 2);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (50, '2019-08-07 00:19:39', 7, 5);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (20, '2019-06-15 14:51:17', 1, 1);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (116, '2019-06-28 00:24:56', 15, 15);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (119, '2019-07-28 04:21:39', 7, 12);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (40, '2019-08-16 22:04:10', 4, 6);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (108, '2020-01-26 06:53:32', 2, 2);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (86, '2019-11-14 01:20:20', 2, 12);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (78, '2019-06-01 14:16:47', 7, 4);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (73, '2019-07-28 07:44:03', 8, 1);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (67, '2020-03-12 19:59:19', 11, 1);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (29, '2020-02-29 14:45:04', 5, 7);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (65, '2019-06-07 14:42:04', 6, 4);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (123, '2020-02-25 08:04:03', 5, 13);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (36, '2019-10-11 11:07:46', 9, 12);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (81, '2019-11-17 03:48:17', 8, 11);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (134, '2019-05-28 08:57:14', 6, 11);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (91, '2019-12-16 01:38:40', 15, 6);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (41, '2020-04-02 08:21:20', 10, 14);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (79, '2019-10-25 12:44:29', 2, 1);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (68, '2019-08-15 18:07:23', 15, 10);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (130, '2019-07-09 16:14:37', 3, 4);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (148, '2019-07-21 13:37:34', 5, 9);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (90, '2020-01-18 11:55:58', 14, 14);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (24, '2019-10-20 13:39:34', 10, 3);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (113, '2019-06-01 01:39:41', 12, 4);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (126, '2019-08-29 09:40:19', 5, 1);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (18, '2020-01-21 09:06:18', 1, 7);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (34, '2019-12-25 01:31:58', 2, 8);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (99, '2019-11-25 02:34:53', 8, 11);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (137, '2019-09-25 04:17:05', 8, 7);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (41, '2019-11-04 10:35:14', 9, 8);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (65, '2019-08-16 14:30:20', 10, 4);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (55, '2019-07-16 19:25:15', 11, 13);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (35, '2020-03-13 00:42:50', 15, 2);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (137, '2019-12-13 11:17:07', 15, 2);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (25, '2019-06-06 08:34:07', 14, 10);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (46, '2020-04-07 00:37:40', 7, 15);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (71, '2019-12-22 15:01:30', 6, 15);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (1, '2020-04-24 10:56:44', 8, 13);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (34, '2019-08-13 11:10:35', 14, 4);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (58, '2019-07-21 11:56:58', 1, 1);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (71, '2019-12-01 00:20:47', 6, 2);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (138, '2019-06-01 21:08:07', 13, 10);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (137, '2019-11-02 15:29:38', 6, 9);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (126, '2020-02-29 00:41:50', 3, 8);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (44, '2020-01-23 15:00:24', 10, 6);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (94, '2020-04-04 16:14:27', 13, 5);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (71, '2019-09-24 01:11:22', 14, 6);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (73, '2019-07-18 04:46:45', 10, 10);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (38, '2020-02-11 10:54:24', 15, 13);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (140, '2020-01-30 08:44:10', 9, 5);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (141, '2020-03-28 08:17:45', 8, 15);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (95, '2019-07-16 11:26:10', 4, 10);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (40, '2019-08-05 03:27:41', 10, 4);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (15, '2019-05-14 04:12:49', 4, 2);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (149, '2020-01-20 04:20:54', 14, 6);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (109, '2019-08-21 12:34:52', 14, 2);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (80, '2020-03-18 09:48:07', 5, 8);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (10, '2019-11-01 21:53:38', 2, 3);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (35, '2019-07-31 23:12:30', 8, 13);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (4, '2020-04-03 11:33:44', 10, 13);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (136, '2019-11-06 08:15:51', 11, 5);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (28, '2019-12-31 03:28:09', 5, 10);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (39, '2019-07-13 01:41:13', 15, 3);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (124, '2020-02-22 10:31:13', 7, 2);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (148, '2019-07-05 23:51:00', 12, 10);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (121, '2019-09-30 19:54:45', 13, 14);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (5, '2020-04-22 13:28:26', 6, 14);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (132, '2019-09-25 19:04:38', 12, 3);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (119, '2019-11-28 16:14:38', 12, 13);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (48, '2020-04-02 19:11:05', 11, 15);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (107, '2020-01-07 12:27:28', 4, 6);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (119, '2019-06-30 18:47:42', 8, 5);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (38, '2019-09-13 23:37:37', 14, 4);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (119, '2020-04-12 20:49:19', 6, 4);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (106, '2019-12-03 21:18:21', 2, 7);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (39, '2019-08-22 05:17:10', 9, 9);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (97, '2019-12-21 16:40:25', 8, 6);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (31, '2020-01-10 23:31:49', 5, 8);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (138, '2019-07-15 19:26:12', 1, 1);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (91, '2019-05-11 18:53:55', 4, 9);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (37, '2019-08-13 19:51:24', 13, 5);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (138, '2020-02-24 13:37:45', 14, 11);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (148, '2019-09-22 15:26:18', 6, 10);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (140, '2019-07-01 19:54:18', 15, 15);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (28, '2020-03-06 20:30:17', 15, 6);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (19, '2020-01-15 09:24:17', 9, 1);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (83, '2019-12-15 12:58:16', 13, 7);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (96, '2019-09-14 18:28:02', 13, 13);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (24, '2020-01-26 11:27:04', 6, 12);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (97, '2019-09-20 17:46:03', 13, 14);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (56, '2019-12-11 21:25:13', 14, 11);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (135, '2020-03-23 19:30:19', 1, 8);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (14, '2019-08-25 01:09:16', 3, 6);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (70, '2020-01-24 19:59:23', 12, 5);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (54, '2019-09-01 09:19:27', 12, 4);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (91, '2019-06-15 20:57:42', 15, 10);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (148, '2019-12-19 02:47:49', 1, 2);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (110, '2019-06-24 04:19:50', 1, 13);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (64, '2019-12-30 19:15:54', 5, 5);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (55, '2020-01-22 13:50:36', 11, 12);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (3, '2020-03-17 18:05:42', 2, 3);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (43, '2019-10-23 11:42:34', 13, 7);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (79, '2020-04-03 07:39:43', 15, 15);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (43, '2019-12-05 14:30:09', 10, 6);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (111, '2019-08-29 03:15:53', 6, 9);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (97, '2019-06-05 08:07:12', 13, 6);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (37, '2019-07-25 04:26:11', 14, 3);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (28, '2019-08-24 09:12:34', 14, 9);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (120, '2019-11-26 08:45:03', 14, 13);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (115, '2019-04-26 21:17:15', 11, 13);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (122, '2019-05-03 15:23:01', 12, 12);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (14, '2019-09-14 06:07:27', 7, 12);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (131, '2020-01-27 01:16:19', 6, 12);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (74, '2020-02-09 02:38:12', 2, 3);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (6, '2020-04-20 10:27:14', 5, 7);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (102, '2019-12-18 12:24:40', 8, 8);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (33, '2020-03-25 01:02:23', 13, 4);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (43, '2019-06-19 06:43:13', 11, 7);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (138, '2019-05-01 02:11:21', 5, 8);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (35, '2020-01-06 18:27:39', 2, 1);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (88, '2019-10-18 13:29:15', 2, 13);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (38, '2019-08-29 00:59:41', 12, 14);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (115, '2019-09-04 10:53:19', 8, 8);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (57, '2019-09-01 05:32:30', 6, 2);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (12, '2019-12-24 16:38:55', 4, 11);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (139, '2019-10-12 20:40:53', 7, 7);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (124, '2019-09-14 13:02:14', 7, 8);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (39, '2019-11-17 03:16:48', 6, 4);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (6, '2019-11-24 23:28:31', 7, 8);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (110, '2019-11-18 11:09:20', 12, 5);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (56, '2019-06-17 16:12:39', 14, 13);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (28, '2019-06-24 05:02:41', 2, 2);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (1, '2019-08-08 21:57:45', 8, 13);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (127, '2020-01-13 18:38:13', 8, 4);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (42, '2020-01-04 17:21:09', 1, 15);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (145, '2019-11-15 01:42:50', 1, 6);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (112, '2019-07-16 13:46:56', 7, 11);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (46, '2019-07-28 11:51:10', 11, 6);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (19, '2019-05-04 17:32:29', 6, 11);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (12, '2019-07-15 20:09:15', 8, 6);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (18, '2019-11-25 04:28:41', 3, 2);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (130, '2019-05-03 23:08:48', 6, 1);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (47, '2019-08-22 17:28:57', 4, 4);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (140, '2020-03-26 03:11:47', 10, 8);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (50, '2019-07-29 21:43:27', 4, 11);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (9, '2020-04-09 18:43:35', 15, 4);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (55, '2019-08-14 05:51:06', 12, 7);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (55, '2019-07-28 23:17:49', 11, 15);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (116, '2019-12-07 12:45:19', 11, 14);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (59, '2019-07-19 01:20:55', 5, 5);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (116, '2019-11-30 20:19:53', 1, 13);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (143, '2020-03-09 19:43:33', 2, 6);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (102, '2020-01-01 05:40:40', 14, 10);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (119, '2019-09-25 11:17:51', 2, 13);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (83, '2020-01-24 09:51:24', 8, 5);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (75, '2019-07-20 14:27:56', 4, 5);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (69, '2020-04-10 15:14:28', 3, 11);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (98, '2019-08-09 10:43:16', 13, 11);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (14, '2020-02-28 07:56:55', 15, 10);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (35, '2020-03-05 17:38:59', 5, 12);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (103, '2020-01-06 05:42:20', 2, 2);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (55, '2019-10-22 17:14:50', 6, 4);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (77, '2020-01-11 09:43:00', 8, 15);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (10, '2019-08-11 02:11:34', 9, 3);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (81, '2019-06-12 15:46:23', 1, 9);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (41, '2020-03-27 09:35:12', 1, 6);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (97, '2019-05-09 00:58:29', 9, 8);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (63, '2020-01-02 09:30:39', 3, 3);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (9, '2020-03-01 13:41:10', 9, 10);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (47, '2019-08-01 11:12:31', 4, 1);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (115, '2020-03-09 23:54:04', 3, 2);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (25, '2020-03-15 16:09:44', 9, 14);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (143, '2019-07-11 10:33:39', 11, 9);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (84, '2020-01-01 09:44:05', 4, 3);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (9, '2020-01-21 03:00:48', 8, 9);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (148, '2019-05-23 19:57:58', 11, 12);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (20, '2020-04-07 15:15:24', 8, 1);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (25, '2019-08-03 04:08:50', 6, 12);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (46, '2020-03-31 13:09:09', 1, 2);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (47, '2020-03-19 13:14:14', 2, 6);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (76, '2019-07-22 09:17:41', 5, 14);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (57, '2019-11-21 02:51:17', 8, 1);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (11, '2020-03-24 19:25:00', 8, 2);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (5, '2020-04-23 12:24:28', 2, 15);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (65, '2019-05-30 14:55:03', 14, 3);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (31, '2019-07-18 15:01:57', 9, 4);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (39, '2019-10-02 10:35:28', 12, 9);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (71, '2019-07-06 09:16:15', 10, 3);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (124, '2019-07-29 09:37:50', 1, 7);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (62, '2019-07-02 16:22:48', 13, 9);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (69, '2019-11-02 23:36:00', 9, 5);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (44, '2020-01-02 11:59:01', 3, 14);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (126, '2019-11-25 17:39:21', 2, 9);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (105, '2019-08-16 22:57:10', 10, 13);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (18, '2019-11-09 13:24:23', 14, 11);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (70, '2019-12-02 11:22:55', 4, 3);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (47, '2020-03-26 21:55:54', 13, 15);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (89, '2019-12-21 19:25:24', 2, 2);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (129, '2019-05-09 08:00:38', 7, 11);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (117, '2020-01-21 04:57:06', 15, 15);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (137, '2019-07-28 23:20:40', 15, 1);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (12, '2019-07-27 08:52:44', 8, 9);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (74, '2019-06-03 22:39:54', 14, 14);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (136, '2019-12-29 07:34:45', 2, 10);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (113, '2019-05-20 07:25:25', 13, 5);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (2, '2020-04-07 01:25:03', 5, 8);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (145, '2019-09-11 14:23:36', 15, 10);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (123, '2020-03-09 18:23:36', 14, 10);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (73, '2019-12-07 18:54:09', 8, 2);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (54, '2020-04-24 02:55:38', 15, 13);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (97, '2020-04-16 07:39:05', 15, 9);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (22, '2019-05-06 18:14:10', 1, 5);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (133, '2020-04-17 12:33:27', 5, 5);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (98, '2019-11-05 14:44:40', 1, 4);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (84, '2020-03-24 01:50:25', 2, 2);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (13, '2020-02-19 07:08:53', 4, 1);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (7, '2020-01-24 06:43:00', 8, 8);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (19, '2019-08-07 02:11:22', 1, 7);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (62, '2019-05-03 08:16:10', 15, 1);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (23, '2019-10-20 18:19:56', 8, 5);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (137, '2019-07-31 15:32:31', 1, 9);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (30, '2020-04-07 22:15:18', 10, 8);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (63, '2020-01-21 21:19:44', 13, 10);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (131, '2019-05-13 04:42:22', 2, 8);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (136, '2019-11-07 13:51:58', 11, 13);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (35, '2019-10-09 09:14:53', 3, 11);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (30, '2019-05-24 01:10:39', 10, 3);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (13, '2020-02-16 09:27:36', 3, 9);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (89, '2020-04-20 03:51:16', 4, 6);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (76, '2019-08-23 21:05:17', 1, 3);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (67, '2019-12-22 01:22:00', 2, 2);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (66, '2020-02-03 01:00:23', 11, 1);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (132, '2019-06-11 21:44:19', 6, 2);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (137, '2019-10-02 13:19:22', 3, 11);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (74, '2019-07-18 09:06:15', 9, 4);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (131, '2020-04-19 21:56:02', 12, 11);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (129, '2019-08-16 01:42:27', 8, 2);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (72, '2020-04-14 18:57:23', 4, 8);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (83, '2019-05-12 20:12:49', 8, 13);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (64, '2019-08-27 20:21:58', 10, 13);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (146, '2020-03-16 11:01:18', 10, 10);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (135, '2019-09-22 08:10:01', 12, 3);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (92, '2019-09-09 22:38:12', 9, 7);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (74, '2019-07-22 21:26:04', 1, 6);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (43, '2020-01-04 13:00:35', 12, 15);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (137, '2020-03-28 00:21:16', 3, 9);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (114, '2019-05-02 12:27:13', 10, 10);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (32, '2019-12-10 12:22:59', 1, 15);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (36, '2019-11-18 05:16:59', 10, 12);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (111, '2019-08-21 15:50:45', 7, 5);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (144, '2019-10-19 11:37:23', 8, 2);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (30, '2019-08-29 21:09:14', 10, 4);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (19, '2020-03-12 16:33:33', 14, 14);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (37, '2019-11-12 01:03:41', 14, 14);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (81, '2020-03-25 14:36:41', 12, 7);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (146, '2019-07-04 22:36:40', 10, 3);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (104, '2019-12-08 15:29:12', 12, 13);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (120, '2019-10-24 07:02:59', 11, 12);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (109, '2019-12-15 00:22:18', 10, 7);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (142, '2020-02-22 16:42:44', 12, 14);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (125, '2019-05-03 16:54:16', 15, 15);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (143, '2019-07-08 15:25:26', 7, 9);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (53, '2019-12-31 10:42:53', 9, 6);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (74, '2019-10-21 07:23:12', 15, 13);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (92, '2019-06-08 04:11:08', 2, 1);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (69, '2019-06-13 00:00:49', 5, 4);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (21, '2019-11-16 12:43:09', 6, 9);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (113, '2019-12-15 10:07:54', 5, 2);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (90, '2019-08-30 21:47:02', 9, 6);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (84, '2019-07-19 04:01:32', 9, 12);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (71, '2019-12-09 01:17:40', 14, 7);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (2, '2020-04-05 12:41:53', 1, 11);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (111, '2019-06-01 23:07:10', 9, 13);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (121, '2019-10-11 22:10:21', 6, 14);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (139, '2019-10-29 12:51:22', 6, 13);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (101, '2020-02-24 02:59:47', 15, 9);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (138, '2019-10-20 07:37:05', 2, 1);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (74, '2019-07-07 03:37:55', 11, 4);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (82, '2020-01-19 23:01:30', 15, 1);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (54, '2019-09-19 19:11:16', 13, 11);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (132, '2019-08-11 18:03:04', 15, 6);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (4, '2019-12-31 09:56:31', 6, 12);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (13, '2020-01-10 18:57:55', 11, 5);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (33, '2020-03-20 17:02:08', 5, 3);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (21, '2019-11-21 12:01:08', 10, 13);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (27, '2019-06-25 10:52:09', 3, 15);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (8, '2020-03-27 23:31:56', 7, 13);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (75, '2020-04-24 18:48:41', 2, 10);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (146, '2019-08-28 19:50:08', 1, 3);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (87, '2020-02-19 22:55:05', 6, 7);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (10, '2019-12-18 19:04:27', 2, 11);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (29, '2020-02-06 23:55:30', 3, 12);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (120, '2019-11-17 14:23:56', 4, 12);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (124, '2020-01-13 15:30:50', 4, 8);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (44, '2020-01-17 01:43:37', 6, 2);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (71, '2020-03-28 16:13:38', 4, 12);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (137, '2020-04-04 13:48:21', 3, 7);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (65, '2019-06-01 19:36:48', 2, 6);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (104, '2019-10-22 06:19:18', 9, 15);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (131, '2019-08-30 03:47:27', 3, 6);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (114, '2020-01-15 21:22:13', 11, 14);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (36, '2020-03-28 04:48:11', 7, 13);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (71, '2019-11-12 14:38:31', 11, 15);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (103, '2020-04-07 12:47:25', 5, 4);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (10, '2019-11-08 14:31:56', 8, 4);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (6, '2020-03-29 00:46:41', 3, 4);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (39, '2019-10-24 03:51:27', 13, 12);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (64, '2019-10-09 17:52:12', 5, 8);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (83, '2019-10-22 08:41:50', 11, 11);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (65, '2020-01-31 19:13:48', 1, 10);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (135, '2020-03-21 19:28:21', 4, 2);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (139, '2019-07-19 01:34:54', 12, 3);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (106, '2019-06-03 13:16:24', 2, 2);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (48, '2019-11-28 16:57:40', 11, 5);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (134, '2019-07-20 00:48:05', 9, 11);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (77, '2020-04-07 05:07:59', 2, 7);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (49, '2019-09-28 22:31:35', 13, 5);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (25, '2019-05-21 22:55:13', 7, 6);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (47, '2020-01-23 11:50:09', 9, 11);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (129, '2020-04-13 00:39:41', 2, 10);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (113, '2019-06-07 16:44:26', 7, 5);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (92, '2019-07-17 03:05:41', 3, 15);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (40, '2019-12-19 16:02:32', 14, 5);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (115, '2019-10-16 11:16:24', 5, 10);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (103, '2020-03-01 16:09:24', 4, 4);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (110, '2019-07-06 12:16:43', 2, 13);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (102, '2019-04-28 20:56:04', 8, 11);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (47, '2019-12-26 19:40:17', 4, 14);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (43, '2019-06-29 14:36:40', 5, 12);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (4, '2019-08-13 06:12:41', 14, 9);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (58, '2019-12-12 12:11:25', 10, 6);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (68, '2020-03-05 03:11:54', 4, 14);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (127, '2020-03-10 11:44:45', 12, 9);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (95, '2020-02-19 02:54:29', 11, 9);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (17, '2019-12-02 15:14:56', 1, 14);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (95, '2019-09-12 10:43:35', 4, 9);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (132, '2020-01-30 22:17:35', 9, 7);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (86, '2019-05-16 17:10:44', 14, 9);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (119, '2019-09-09 10:48:20', 9, 2);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (80, '2019-07-01 22:13:29', 15, 4);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (104, '2019-09-30 08:21:26', 8, 3);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (118, '2020-03-13 01:25:23', 10, 2);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (30, '2019-05-08 20:52:45', 8, 8);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (110, '2019-08-22 05:42:09', 2, 14);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (134, '2019-07-17 15:21:50', 2, 4);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (137, '2019-05-21 08:37:28', 11, 10);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (97, '2020-02-14 13:31:37', 7, 11);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (70, '2020-04-23 22:38:22', 8, 5);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (133, '2019-08-01 23:04:39', 13, 1);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (53, '2020-03-06 16:06:30', 1, 9);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (57, '2020-02-08 23:54:25', 4, 6);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (2, '2019-08-01 11:56:28', 13, 5);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (116, '2019-06-30 12:36:35', 14, 10);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (135, '2019-07-07 21:03:12', 9, 13);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (104, '2019-10-11 16:37:33', 10, 12);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (1, '2019-08-18 21:07:24', 8, 2);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (127, '2019-07-13 21:44:10', 15, 12);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (20, '2019-08-10 07:43:13', 1, 15);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (96, '2019-10-11 14:24:30', 13, 1);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (92, '2020-02-17 07:19:07', 13, 6);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (119, '2019-12-21 03:55:29', 12, 6);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (117, '2019-06-14 03:40:50', 10, 12);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (37, '2019-06-13 09:06:37', 3, 1);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (96, '2019-10-14 01:49:27', 11, 12);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (18, '2020-03-05 00:29:08', 10, 15);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (85, '2019-06-04 14:43:12', 9, 4);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (104, '2019-06-01 02:52:37', 3, 15);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (109, '2019-12-08 11:25:21', 3, 10);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (41, '2019-10-10 01:07:01', 11, 11);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (96, '2019-12-11 20:10:21', 7, 8);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (118, '2020-01-28 15:20:59', 8, 3);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (115, '2019-05-10 19:35:49', 5, 2);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (147, '2019-05-20 03:43:45', 12, 9);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (24, '2020-02-02 17:11:27', 10, 5);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (94, '2019-10-31 20:12:55', 7, 8);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (65, '2019-05-23 22:04:44', 4, 9);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (130, '2020-03-29 18:44:40', 5, 4);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (109, '2020-03-07 11:53:42', 11, 7);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (11, '2019-05-04 03:26:12', 4, 14);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (126, '2019-08-17 21:45:06', 2, 7);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (149, '2020-01-12 19:10:29', 7, 7);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (144, '2020-01-07 02:38:02', 6, 8);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (14, '2020-02-17 03:06:51', 6, 9);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (66, '2020-02-10 13:27:16', 15, 4);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (135, '2019-06-20 15:43:28', 7, 5);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (86, '2019-10-26 15:00:02', 7, 13);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (14, '2019-12-08 09:10:05', 7, 14);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (98, '2019-06-14 02:22:38', 8, 12);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (94, '2020-01-08 15:58:51', 2, 12);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (71, '2020-01-06 04:27:35', 12, 12);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (72, '2019-06-19 07:25:46', 12, 14);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (19, '2020-01-30 17:33:01', 12, 10);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (124, '2019-10-04 09:33:47', 11, 5);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (2, '2020-04-09 04:25:42', 1, 15);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (42, '2020-04-16 12:31:44', 9, 3);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (127, '2020-01-23 20:29:55', 1, 13);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (46, '2019-07-19 15:25:10', 2, 7);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (115, '2019-06-10 22:52:56', 6, 7);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (96, '2020-02-15 18:31:14', 2, 6);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (100, '2020-01-01 17:32:30', 14, 6);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (135, '2019-06-17 11:15:43', 11, 10);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (135, '2020-02-14 08:43:37', 9, 2);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (132, '2019-12-31 17:35:12', 1, 5);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (146, '2020-01-20 12:08:09', 12, 2);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (39, '2019-09-10 23:56:02', 7, 2);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (5, '2019-10-24 10:46:16', 1, 9);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (127, '2019-05-06 10:36:19', 14, 14);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (145, '2019-09-30 17:38:40', 13, 11);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (74, '2020-04-04 23:39:39', 15, 10);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (146, '2020-03-20 16:19:21', 12, 6);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (142, '2020-01-09 02:04:07', 9, 11);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (148, '2019-06-01 04:47:05', 9, 14);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (19, '2019-09-15 21:26:52', 9, 12);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (139, '2019-12-02 09:58:23', 6, 5);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (134, '2020-01-12 04:02:29', 13, 7);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (38, '2019-05-21 13:30:15', 8, 15);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (99, '2019-10-12 08:39:12', 3, 3);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (78, '2019-10-08 04:07:36', 8, 7);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (21, '2019-11-28 18:48:16', 13, 7);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (69, '2019-07-25 17:01:52', 14, 4);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (15, '2020-03-22 09:48:55', 7, 11);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (108, '2019-07-11 08:20:34', 3, 7);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (15, '2019-06-28 20:00:19', 13, 10);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (46, '2019-06-01 14:57:58', 15, 3);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (3, '2019-07-20 11:54:55', 15, 12);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (13, '2020-02-10 02:17:29', 2, 11);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (72, '2019-06-18 12:53:23', 9, 14);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (92, '2019-07-28 14:50:28', 14, 2);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (123, '2019-12-06 04:44:12', 11, 1);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (30, '2020-02-03 02:48:50', 11, 4);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (81, '2020-01-09 02:30:22', 4, 1);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (49, '2019-07-14 05:22:50', 4, 4);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (65, '2019-07-14 20:15:20', 5, 6);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (28, '2020-02-27 01:43:46', 4, 12);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (131, '2019-07-06 18:52:01', 14, 4);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (29, '2020-02-08 07:16:20', 14, 14);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (38, '2019-09-19 08:29:02', 2, 11);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (100, '2019-09-10 03:57:26', 8, 9);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (29, '2019-05-04 18:23:59', 14, 4);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (133, '2019-04-28 13:30:45', 12, 4);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (141, '2019-07-05 19:42:55', 13, 8);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (62, '2019-12-11 04:52:24', 9, 1);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (116, '2019-04-30 19:17:42', 12, 4);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (4, '2019-12-03 11:13:17', 10, 7);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (122, '2019-11-14 02:27:38', 12, 15);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (120, '2020-01-27 21:16:44', 9, 1);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (64, '2020-02-01 07:54:55', 14, 5);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (148, '2019-09-14 09:52:44', 5, 1);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (78, '2019-08-03 04:31:58', 12, 2);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (39, '2019-10-11 01:25:48', 8, 13);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (9, '2020-04-20 18:43:41', 8, 3);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (140, '2019-10-12 10:56:33', 10, 15);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (113, '2019-06-25 00:05:54', 3, 4);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (53, '2020-01-10 07:53:06', 11, 14);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (130, '2019-10-09 15:42:00', 6, 8);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (25, '2019-07-23 08:33:56', 9, 14);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (99, '2019-05-26 00:14:57', 12, 14);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (22, '2020-03-21 13:56:55', 14, 2);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (142, '2019-07-21 20:59:59', 10, 8);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (83, '2019-05-13 19:54:20', 15, 1);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (146, '2019-11-02 04:15:32', 5, 4);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (138, '2020-03-02 01:42:59', 4, 11);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (55, '2019-12-27 13:41:18', 5, 13);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (15, '2019-09-24 11:17:04', 10, 4);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (131, '2019-08-28 22:33:15', 8, 6);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (17, '2020-02-26 09:23:48', 11, 10);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (109, '2020-04-16 03:50:24', 5, 11);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (59, '2019-04-29 00:33:45', 3, 5);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (138, '2019-05-26 19:49:58', 8, 3);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (53, '2020-04-01 16:46:29', 1, 11);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (74, '2019-07-24 00:25:29', 2, 11);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (97, '2019-11-20 03:04:32', 11, 7);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (83, '2020-01-19 04:07:31', 15, 8);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (69, '2020-04-23 08:17:43', 13, 14);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (49, '2020-01-05 03:56:24', 6, 2);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (64, '2020-01-22 07:15:13', 6, 10);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (78, '2020-04-12 10:10:16', 6, 11);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (106, '2019-09-10 02:38:10', 14, 15);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (1, '2019-10-30 19:39:22', 13, 15);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (96, '2020-01-06 16:08:45', 3, 11);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (107, '2020-03-03 12:17:38', 8, 6);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (126, '2020-03-28 16:39:02', 4, 6);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (145, '2020-01-30 03:55:12', 5, 12);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (139, '2019-05-27 12:54:28', 5, 8);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (76, '2019-08-23 21:24:23', 1, 15);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (43, '2019-10-21 15:43:52', 13, 15);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (127, '2020-03-21 04:08:51', 1, 9);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (136, '2019-07-23 12:25:21', 7, 13);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (112, '2019-09-12 00:07:48', 1, 13);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (112, '2019-05-10 16:26:18', 9, 13);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (68, '2019-12-20 16:28:59', 11, 8);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (20, '2020-01-23 09:11:32', 3, 13);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (44, '2019-07-03 02:57:57', 4, 8);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (134, '2020-01-15 18:16:32', 4, 12);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (131, '2019-09-18 22:39:44', 13, 14);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (95, '2019-12-22 11:27:54', 4, 8);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (71, '2019-12-25 00:44:37', 11, 2);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (131, '2019-07-08 12:02:03', 12, 4);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (4, '2020-03-21 19:01:26', 10, 13);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (80, '2020-03-28 07:23:15', 10, 15);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (89, '2020-03-27 11:48:55', 14, 6);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (63, '2020-02-01 16:28:38', 12, 12);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (118, '2019-09-30 11:36:39', 13, 11);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (76, '2020-02-09 03:58:48', 4, 2);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (18, '2019-12-10 11:44:33', 15, 10);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (67, '2019-11-12 10:07:13', 7, 12);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (143, '2019-09-15 01:31:33', 13, 11);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (90, '2019-08-09 12:45:01', 11, 15);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (112, '2020-03-21 05:39:03', 4, 5);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (108, '2019-12-25 03:47:19', 6, 1);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (79, '2019-08-13 13:12:21', 13, 14);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (22, '2020-01-09 15:51:08', 5, 11);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (145, '2020-02-01 03:05:10', 14, 1);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (142, '2019-07-21 14:49:01', 3, 4);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (10, '2019-07-28 14:07:36', 6, 13);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (5, '2019-07-11 13:35:45', 5, 9);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (41, '2019-08-18 00:06:01', 4, 2);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (128, '2020-02-20 23:31:02', 14, 15);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (132, '2020-01-08 07:09:54', 12, 8);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (115, '2019-10-20 08:46:27', 10, 1);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (145, '2019-09-30 04:24:13', 1, 5);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (28, '2020-01-31 21:52:28', 6, 10);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (20, '2020-01-03 17:20:15', 5, 13);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (5, '2019-07-04 08:10:32', 13, 10);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (61, '2020-03-19 02:35:01', 9, 7);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (73, '2019-07-16 17:33:59', 6, 7);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (147, '2019-10-30 14:51:50', 10, 13);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (20, '2019-08-08 11:10:38', 2, 3);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (102, '2019-05-02 17:45:58', 15, 10);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (83, '2020-04-17 02:31:12', 3, 5);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (32, '2020-02-20 14:57:39', 3, 12);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (120, '2019-08-08 20:16:06', 14, 15);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (15, '2020-01-22 20:00:50', 6, 14);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (109, '2019-07-09 11:31:37', 4, 9);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (53, '2019-10-09 09:13:55', 2, 1);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (135, '2019-10-24 10:35:01', 15, 4);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (122, '2020-01-01 07:25:58', 6, 15);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (107, '2019-07-13 16:49:06', 6, 5);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (104, '2020-03-10 05:02:45', 15, 1);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (128, '2020-02-29 23:25:31', 11, 11);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (95, '2019-11-26 15:32:04', 1, 1);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (105, '2020-03-08 16:24:26', 4, 8);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (27, '2019-12-25 09:09:06', 5, 1);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (107, '2019-06-22 15:53:15', 6, 1);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (63, '2019-11-26 11:42:50', 5, 3);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (58, '2020-04-06 09:47:08', 12, 8);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (11, '2019-06-23 23:22:45', 9, 5);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (59, '2019-09-21 01:26:18', 1, 4);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (130, '2020-01-11 17:57:59', 8, 15);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (47, '2019-04-28 20:35:04', 14, 1);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (136, '2019-11-25 11:10:29', 6, 9);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (90, '2019-08-31 13:49:06', 9, 4);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (130, '2020-04-23 11:53:35', 14, 1);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (106, '2019-09-03 08:16:30', 11, 15);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (103, '2020-03-25 16:46:14', 11, 11);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (72, '2019-07-09 09:54:55', 6, 8);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (3, '2019-09-23 04:36:09', 12, 10);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (25, '2019-07-14 19:36:16', 4, 2);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (44, '2019-08-19 05:08:38', 2, 10);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (133, '2019-06-29 00:17:26', 11, 3);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (123, '2020-04-23 15:04:49', 12, 3);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (131, '2019-08-24 23:28:59', 14, 9);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (69, '2019-07-13 11:56:01', 3, 15);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (29, '2019-12-04 02:59:41', 3, 9);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (66, '2019-09-30 08:51:52', 6, 14);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (83, '2020-02-24 13:55:00', 4, 8);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (54, '2020-02-16 10:44:15', 14, 7);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (107, '2020-04-06 16:39:35', 7, 8);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (108, '2019-12-22 03:16:00', 1, 8);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (133, '2020-02-02 13:29:50', 15, 6);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (97, '2019-08-21 16:38:22', 9, 6);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (111, '2019-08-26 17:13:38', 9, 5);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (147, '2019-10-02 01:46:12', 3, 7);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (147, '2019-07-15 18:19:57', 1, 14);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (30, '2020-04-12 01:14:46', 11, 5);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (22, '2020-04-24 09:26:21', 6, 9);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (149, '2020-02-15 15:59:10', 14, 10);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (15, '2019-11-14 14:54:29', 5, 14);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (34, '2019-12-09 20:36:02', 5, 7);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (124, '2019-07-17 13:31:45', 1, 10);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (14, '2019-08-03 13:27:31', 1, 13);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (56, '2019-06-16 10:24:41', 3, 8);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (22, '2020-01-31 00:43:44', 3, 2);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (135, '2019-05-15 12:04:27', 12, 4);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (125, '2019-09-17 22:09:54', 14, 2);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (80, '2020-01-01 09:51:55', 7, 15);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (116, '2019-12-05 13:54:44', 7, 15);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (108, '2019-12-31 20:26:12', 15, 3);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (38, '2019-05-07 21:01:46', 10, 6);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (150, '2019-10-18 19:35:22', 9, 8);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (17, '2020-03-02 19:53:25', 8, 6);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (129, '2020-02-26 06:10:47', 4, 15);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (23, '2019-11-19 22:30:08', 12, 3);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (6, '2019-06-08 15:56:22', 5, 13);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (53, '2020-02-17 02:01:49', 10, 15);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (53, '2019-07-10 16:54:01', 11, 7);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (86, '2019-11-07 04:03:29', 2, 3);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (43, '2019-09-12 05:17:14', 4, 4);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (29, '2019-12-23 14:03:58', 10, 8);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (5, '2019-06-22 15:35:15', 13, 6);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (14, '2019-12-20 20:52:34', 9, 6);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (144, '2019-11-25 22:02:00', 8, 5);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (129, '2020-01-01 00:45:09', 12, 1);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (81, '2020-04-15 22:59:28', 5, 12);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (139, '2019-05-24 08:48:17', 11, 5);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (41, '2019-07-14 05:58:24', 5, 12);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (65, '2019-07-14 21:26:31', 7, 4);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (142, '2019-07-14 18:53:58', 10, 6);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (31, '2019-11-26 06:04:34', 6, 12);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (84, '2019-08-20 05:14:40', 8, 8);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (50, '2020-02-25 23:11:38', 10, 7);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (44, '2020-04-20 08:43:33', 15, 1);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (58, '2019-10-19 16:04:32', 7, 1);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (77, '2020-02-27 11:19:43', 14, 10);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (34, '2019-06-24 12:34:08', 13, 13);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (113, '2019-09-04 19:08:45', 10, 11);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (136, '2019-12-11 04:15:58', 9, 6);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (53, '2019-10-11 21:39:58', 9, 3);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (148, '2019-09-08 08:16:00', 11, 12);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (147, '2019-09-25 11:52:19', 10, 10);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (15, '2020-02-06 07:53:41', 9, 8);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (6, '2020-01-28 18:03:27', 15, 4);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (75, '2020-03-10 18:11:16', 3, 7);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (69, '2020-04-24 06:53:29', 11, 11);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (1, '2019-07-28 10:10:51', 6, 11);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (138, '2020-02-08 10:30:43', 15, 1);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (85, '2020-03-06 17:02:54', 10, 9);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (97, '2019-08-04 08:03:11', 4, 11);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (131, '2019-09-11 04:06:21', 11, 14);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (89, '2020-03-07 14:19:12', 8, 11);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (34, '2019-06-12 01:47:14', 1, 3);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (148, '2020-02-06 15:26:20', 14, 4);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (131, '2019-11-16 21:45:45', 7, 3);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (66, '2019-06-10 19:14:15', 11, 8);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (35, '2019-10-06 02:54:47', 15, 10);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (128, '2019-06-08 11:49:39', 9, 4);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (81, '2019-10-28 19:40:06', 6, 11);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (41, '2020-02-01 16:36:36', 1, 15);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (15, '2019-07-01 16:24:48', 7, 14);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (21, '2019-08-14 18:58:49', 7, 13);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (37, '2020-01-22 03:04:19', 15, 1);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (74, '2019-08-29 12:05:05', 15, 2);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (107, '2019-05-20 10:15:07', 7, 8);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (28, '2019-09-12 05:02:50', 4, 14);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (86, '2019-11-01 00:47:12', 3, 10);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (30, '2019-12-01 05:00:42', 12, 5);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (94, '2019-08-12 13:21:41', 1, 13);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (73, '2020-01-26 01:56:35', 12, 2);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (43, '2020-04-07 04:56:10', 1, 15);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (75, '2020-04-03 22:48:48', 10, 6);
INSERT INTO visita_guidata_effettuata (codgr, data, codtipovisita, codguida)
VALUES
  (20, '2019-07-21 22:59:59', 1, 3);
  
  