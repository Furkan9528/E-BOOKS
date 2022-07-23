CREATE TABLE `personel` (
  `personelid` int(11) NOT NULL AUTO_INCREMENT,
  `personelname` varchar(45) COLLATE utf8_turkish_ci DEFAULT NULL,
  `personelemail` varchar(45) COLLATE utf8_turkish_ci DEFAULT NULL,
  `personelno` varchar(45) COLLATE utf8_turkish_ci DEFAULT NULL,
  `personelmessage` varchar(45) COLLATE utf8_turkish_ci DEFAULT NULL,
  PRIMARY KEY (`personelid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;
