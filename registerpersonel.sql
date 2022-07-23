CREATE TABLE `registerpersonel` (
  `registerpersonelid` int(11) NOT NULL AUTO_INCREMENT,
  `registerpersonelname` varchar(45) COLLATE utf8_turkish_ci DEFAULT NULL,
  `registerpersonelemail` varchar(45) COLLATE utf8_turkish_ci DEFAULT NULL,
  `registerpersonelpassword` varchar(45) COLLATE utf8_turkish_ci DEFAULT NULL,
  `registerpersonelrepassword` varchar(45) COLLATE utf8_turkish_ci DEFAULT NULL,
  PRIMARY KEY (`registerpersonelid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;
