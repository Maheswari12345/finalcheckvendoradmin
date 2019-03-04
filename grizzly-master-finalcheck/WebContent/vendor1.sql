SELECT * FROM test.login_page;

CREATE TABLE `login_page` (
  `username` varchar(45) NOT NULL,
  `password` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `designation` varchar(45) DEFAULT NULL,
  `id` varchar(45) DEFAULT NULL,
  `office` varchar(45) DEFAULT NULL,
  `sta` int(11) DEFAULT NULL,
  `vendorrating` int(11) DEFAULT NULL,
  `mobile` int(11) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `test`.`login_page`
(`username`,
`password`,
`status`,
`designation`,
`id`,
`office`,
`sta`,
`vendorrating`,
`mobile`,
`address`)
VALUES
('visanth',
'jesuslovesme',
'unlock',
'admin',
'111grr',
'cudd',
0,
7,
2434,
'fhgrh');
INSERT INTO `test`.`login_page`
(`username`,
`password`,
`status`,
`designation`,
`id`,
`office`,
`sta`,
`vendorrating`,
`mobile`,
`address`)
VALUES
('maheswari',
'jesus5.me',
'unlock',
'vendor',
'112gr',
'chennai',
0,
6,
12345,
'dog book bad');



SELECT * FROM test.vendorproduct;


