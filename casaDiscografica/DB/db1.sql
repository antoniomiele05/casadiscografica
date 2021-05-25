INSERT INTO `persona` (id,cognome,nome) VALUES (1,'Winehouse','Amy'),(2,'De Andrè','Fabrizio'),(3,'Battisti','Lucio'),(4,'Caselli','Caterina'),(5,'Cherubini','Lorenzo'),(6,'Gaetano','Salvatore Antonio'),(7,'Dalla','Lucio'),(8,'Grant','Elisabeth'),(9,'Rapetti','Giulio'),(10,'Malgioglio','Cristiano'),(11,'Guccini','Francesco'),(12,'Tenco','Luigi'),(13,'Eilish','Billie'),(14,'Mannoia','Fiorella'),(15,'Lucia','Federico'),(16,'Michielin','Francesca'),(17,'Rettore','Donatella'),(18,'Battiato','Franco'),(19,'De Gregori','Francesco'),(20,'Gaberscik','Giorgio'),(21,'Zimmerman','Robert Allen'),(22,'Bareilles','Sara');
INSERT INTO `artista` VALUES (1,true,true,'',1),(2,true,true,'Faber',2),(3,true,true,'',3),(4,true,true,'',4),(5,false,true,'Jovanotti',5),(6,true,true,'Rino',6),(7,true,true,'',7),(8,false,true,'Lana Del Rey',8),(9,true,false,'Mogol',9),(10,true,false,'',10),(11,true,true,'',11),(12,true,true,'',12),(13,false,true,'',13),(14,true,true,'',14),(15,true,true,'Fedez',15),(16,false,true,'',16),(17,true,true,'',17),(18,true,true,'',18),(19,true,true,'',19),(20,true,true,'Gaber',20),(21,true,true,'Bob Dylan',21),(22,false,true,'',22);
INSERT INTO `esecuzione` (titolo,anno_di_registrazione,id_artista) VALUES ('Back To Black',2009,1), ('Il Pescatore',1979,2), ('Il Pescatore',1979,14), ('Emozioni',1970,3), ('Emozioni',1970,9), ('Chiamami per nome',2021,16), ('Chiamami per nome',2021,15), ('Video games',2011,8), ('Le biciclette bianche',1967,11), ('Le biciclette bianche',1967,4), ('La ballata dell eroe',1964,12), ('La ballata dell eroe',1963,2), ('Your Power',2021,13), ('Serenella', null,12), ('Serenella', null,9), ('Love Song', 2007, 22), ('Love Song', 2019, 8);
<<<<<<< HEAD
<<<<<<< HEAD
INSERT INTO `disco` (titolo_disco,anno_uscita_album,numero_serie,prezzo) VALUES ('Norman Fucking Rockwell!',2019,'S01',22.5), ('Little Voice',2007,'S23',8), ('Back To Black', 2009,'S05',12.50), 
INSERT INTO `contiene` (id_disco,id_esecuzione) VALUES (1,16), (2,17);
=======
INSERT INTO `disco` (titolo_disco,anno_uscita_album,numero_serie,prezzo) VALUES ('Norman Fucking Rockwell!',2019,'S01',22.5), ('Little Voice',2007,'S23',8), ('Back To Black',2009,'S05',12.5), ('Fabrizio De Andrè in concerto',1979,'S06',15), ('Emozioni',1970,'S11',23.3), ('FEAT (Fuori dagli spazi)',2021,'S13',7),('Born to Die',2012,'S30',19.5),('Diamoci del tu',1967,'S31',9),('Tutto Fabrizio De Andrè',1966,'S43',15.4),('Happier Than Ever',2021,'S60',16),('Quando... tributo a Luigi Tenco',1994,'S61',23.8);
INSERT INTO `contiene` (id_disco,id_esecuzione) VALUES (1,16),(2,17),(3,1),(4,2),(4,3),(5,4),(5,5),(6,6),(6,7),(7,8),(8,9),(8,10),(9,11),(9,12),(10,13),(11,14),(11,15);
>>>>>>> branch 'develop' of https://github.com/antoniomiele05/casadiscografica.git
=======
INSERT INTO `disco` (titolo_disco,anno_uscita_album,numero_serie,prezzo) VALUES ('Norman Fucking Rockwell!',2019,'S01',22.5), ('Little Voice',2007,'S23',8), ('Back To Black',2009,'S05',12.5), ('Fabrizio De Andrè in concerto',1979,'S06',15), ('Emozioni',1970,'S11',23.3), ('FEAT (Fuori dagli spazi)',2021,'S13',7),('Born to Die',2012,'S30',19.5),('Diamoci del tu',1967,'S31',9),('Tutto Fabrizio De Andrè',1966,'S43',15.4),('Happier Than Ever',2021,'S60',16),('Quando... tributo a Luigi Tenco',1994,'S61',23.8);
INSERT INTO `contiene` (id_disco,id_esecuzione) VALUES (1,16),(2,17),(3,1),(4,2),(4,3),(5,4),(5,5),(6,6),(6,7),(7,8),(8,9),(8,10),(9,11),(9,12),(10,13),(11,14),(11,15);
>>>>>>> refs/remotes/origin/develop
