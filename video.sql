CREATE TABLE `softwarevideodatabase`.`video` (
  `videoid` int(11) NOT NULL AUTO_INCREMENT,
  `maincategoryid` int(11) DEFAULT NULL,
  `videocolcategoryid` int(11) DEFAULT NULL,
  `videoorder` int(11) DEFAULT NULL,
  `videoname` varchar(45) COLLATE utf8_turkish_ci DEFAULT NULL,
  `videotime` varchar(45) COLLATE utf8_turkish_ci DEFAULT NULL,
  `videoadress` varchar(45) COLLATE utf8_turkish_ci DEFAULT NULL,
  `videogommekodu` varchar(1500) COLLATE utf8_turkish_ci DEFAULT NULL,
  `videoanlatankisi` varchar(45) COLLATE utf8_turkish_ci DEFAULT NULL,
  `videoaddeddateandtime` varchar(45) COLLATE utf8_turkish_ci DEFAULT NULL,
  `videodescription` varchar(45) COLLATE utf8_turkish_ci DEFAULT NULL,
  PRIMARY KEY (`videoid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;
