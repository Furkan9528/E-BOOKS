CREATE TABLE `creaters` (
  `creatersid` int(11) NOT NULL AUTO_INCREMENT,
  `creatersname` varchar(15) COLLATE utf8_turkish_ci DEFAULT NULL,
  `creatersurname` varchar(15) COLLATE utf8_turkish_ci DEFAULT NULL,
  `creatertext` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  `createrimage` varchar(45) COLLATE utf8_turkish_ci DEFAULT NULL,
  PRIMARY KEY (`creatersid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;
