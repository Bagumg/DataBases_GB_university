DROP TABLE IF EXISTS `parser_config`;
CREATE TABLE `parser_config` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `competitor` varchar(255) NOT NULL,
  `site` varchar(64) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `headers` varchar(255) DEFAULT NULL,
  `captcha` bool DEFAULT 0,
  `threads` int(11),
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `site_to_parse` (`site`)
);

DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `category_name` varchar(100) DEFAULT NULL,
  `category_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `categories` (`category_name`),
  KEY `link_to_category` (`category_url`)
);


DROP TABLE IF EXISTS `electroinstrument`;
CREATE TABLE `electroinstrument` (
  `competitor_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` int(11) NOT NULL,
  `name` varchar(64) DEFAULT NULL,
  `vendor_code` varchar(64) DEFAULT NULL,
  `description` text,
  `price` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `electroinstrument_ibfk_1` FOREIGN KEY (`competitor_id`) REFERENCES `parser_config` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  INDEX goods_name_idx(`name`),
  INDEX vendor_code_idx(`vendor_code`)
);


DROP TABLE IF EXISTS `izmeritelnyy_instrument`;
CREATE TABLE `izmeritelnyy_instrument` (
  `competitor_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` int(11) NOT NULL,
  `name` varchar(64) DEFAULT NULL,
  `vendor_code` varchar(64) DEFAULT NULL,
  `description` text,
  `price` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `izmeritelnyy_instrument_ibfk_1` FOREIGN KEY (`competitor_id`) REFERENCES `parser_config` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  INDEX goods_name_idx(`name`),
  INDEX vendor_code_idx(`vendor_code`)
);


DROP TABLE IF EXISTS `krepezh`;
CREATE TABLE `krepezh` (
  `competitor_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` int(11) NOT NULL,
  `name` varchar(64) DEFAULT NULL,
  `vendor_code` varchar(64) DEFAULT NULL,
  `description` text,
  `price` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `krepezh_ibfk_1` FOREIGN KEY (`competitor_id`) REFERENCES `parser_config` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  INDEX goods_name_idx(`name`),
  INDEX vendor_code_idx(`vendor_code`)
);


DROP TABLE IF EXISTS `metalloobrabatyvayushchiy_instrument`;
CREATE TABLE `metalloobrabatyvayushchiy_instrument` (
  `competitor_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` int(11) NOT NULL,
  `name` varchar(64) DEFAULT NULL,
  `vendor_code` varchar(64) DEFAULT NULL,
  `description` text,
  `price` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `metalloobrabatyvayushchiy_instrument_ibfk_1` FOREIGN KEY (`competitor_id`) REFERENCES `parser_config` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  INDEX goods_name_idx(`name`),
  INDEX vendor_code_idx(`vendor_code`)  
);


DROP TABLE IF EXISTS `mototechnika`;
CREATE TABLE `mototechnika` (
  `competitor_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` int(11) NOT NULL,
  `name` varchar(64) DEFAULT NULL,
  `vendor_code` varchar(64) DEFAULT NULL,
  `description` text,
  `price` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `mototechnika_ibfk_1` FOREIGN KEY (`competitor_id`) REFERENCES `parser_config` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  INDEX goods_name_idx(`name`),
  INDEX vendor_code_idx(`vendor_code`)
);


DROP TABLE IF EXISTS `pnevmooborudovanie`;
CREATE TABLE `pnevmooborudovanie` (
  `competitor_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` int(11) NOT NULL,
  `name` varchar(64) DEFAULT NULL,
  `vendor_code` varchar(64) DEFAULT NULL,
  `description` text,
  `price` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `pnevmooborudovanie_ibfk_1` FOREIGN KEY (`competitor_id`) REFERENCES `parser_config` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  INDEX goods_name_idx(`name`),
  INDEX vendor_code_idx(`vendor_code`)
);


DROP TABLE IF EXISTS `rashodnie_materialy`;
CREATE TABLE `rashodnie_materialy` (
  `competitor_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` int(11) NOT NULL,
  `name` varchar(64) DEFAULT NULL,
  `vendor_code` varchar(64) DEFAULT NULL,
  `description` text,
  `price` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `rashodnie_materialy_ibfk_1` FOREIGN KEY (`competitor_id`) REFERENCES `parser_config` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  INDEX goods_name_idx(`name`),
  INDEX vendor_code_idx(`vendor_code`)
);


DROP TABLE IF EXISTS `slesarno_montazhnyy_instrument`;
CREATE TABLE `slesarno_montazhnyy_instrument` (
  `competitor_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` int(11) NOT NULL,
  `name` varchar(64) DEFAULT NULL,
  `vendor_code` varchar(64) DEFAULT NULL,
  `description` text,
  `price` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `slesarno_montazhnyy_instrument_ibfk_1` FOREIGN KEY (`competitor_id`) REFERENCES `parser_config` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  INDEX goods_name_idx(`name`),
  INDEX vendor_code_idx(`vendor_code`)
);


DROP TABLE IF EXISTS `stanki`;
CREATE TABLE `stanki` (
  `competitor_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` int(11) NOT NULL,
  `name` varchar(64) DEFAULT NULL,
  `vendor_code` varchar(64) DEFAULT NULL,
  `description` text,
  `price` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `stanki_ibfk_1` FOREIGN KEY (`competitor_id`) REFERENCES `parser_config` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  INDEX goods_name_idx(`name`),
  INDEX vendor_code_idx(`vendor_code`)
);


DROP TABLE IF EXISTS `stroitelnoe_oborudovanie`;
CREATE TABLE `stroitelnoe_oborudovanie` (
  `competitor_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` int(11) NOT NULL,
  `name` varchar(64) DEFAULT NULL,
  `vendor_code` varchar(64) DEFAULT NULL,
  `description` text,
  `price` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `stroitelnoe_oborudovanie_ibfk_1` FOREIGN KEY (`competitor_id`) REFERENCES `parser_config` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  INDEX goods_name_idx(`name`),
  INDEX vendor_code_idx(`vendor_code`)
);


DROP TABLE IF EXISTS `svarochnoe_oborudovanie`;
CREATE TABLE `svarochnoe_oborudovanie` (
  `competitor_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` int(11) NOT NULL,
  `name` varchar(64) DEFAULT NULL,
  `vendor_code` varchar(64) DEFAULT NULL,
  `description` text,
  `price` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `svarochnoe_oborudovanie_ibfk_1` FOREIGN KEY (`competitor_id`) REFERENCES `parser_config` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  INDEX goods_name_idx(`name`),
  INDEX vendor_code_idx(`vendor_code`)
);
