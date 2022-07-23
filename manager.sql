CREATE TABLE `softwarevideodatabase`.`manager` (
  `managerid` int(11) NOT NULL AUTO_INCREMENT,
  `managername` varchar(45) COLLATE utf8_turkish_ci DEFAULT NULL,
  `managersurname` varchar(45) COLLATE utf8_turkish_ci DEFAULT NULL,
  `managereposta` varchar(45) COLLATE utf8_turkish_ci DEFAULT NULL,
  `managerpassword` varchar(45) COLLATE utf8_turkish_ci DEFAULT NULL,
  `managertask` varchar(45) COLLATE utf8_turkish_ci DEFAULT NULL,
  `managerlevel` int(11) DEFAULT NULL,
  `managerusername` varchar(45) COLLATE utf8_turkish_ci DEFAULT NULL,
  PRIMARY KEY (`managerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;
