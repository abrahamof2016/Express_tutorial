-- Create tutorials table

USE RestApi;
CREATE TABLE IF NOT EXISTS `tutorial` (
id int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
title varchar(255) NOT NULL,
description varchar(255),
published BOOLEAN DEFAULT false
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
