CREATE TABLE `softwarevideodatabase`.`maincategory` (
  `maincategoryid` int(11) NOT NULL AUTO_INCREMENT,
  `maincategoryname` varchar(45) COLLATE utf8_turkish_ci DEFAULT NULL,
  `maincategoryorder` int(11) DEFAULT NULL,
  `maincategoryimagename` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  PRIMARY KEY (`maincategoryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;
