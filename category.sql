CREATE TABLE `softwarevideodatabase`.`category` (
  `categoryid` int(11) NOT NULL AUTO_INCREMENT,
  `maincategoryid` int(11) DEFAULT NULL,
  `categoryorder` int(11) DEFAULT NULL,
  `categoryname` varchar(45) COLLATE utf8_turkish_ci DEFAULT NULL,
  `categoryimagename` varchar(45) COLLATE utf8_turkish_ci DEFAULT NULL,
  `categoryvitrindegosterim` varchar(1) COLLATE utf8_turkish_ci DEFAULT '0',
  `categorygroup` varchar(45) COLLATE utf8_turkish_ci DEFAULT 'work_1',
  PRIMARY KEY (`categoryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;
