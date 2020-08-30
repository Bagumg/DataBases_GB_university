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

INSERT INTO `parser_config` VALUES 
('1','eius','king.com','http://www.upton.biz','Opera/9.86 (Windows NT 5.0; en-US) Presto/2.9.172 Version/11.00','0','7'),
('2','aut','beier.com','http://www.hintz.org','Mozilla/5.0 (Macintosh; PPC Mac OS X 10_7_5) AppleWebKit/5312 (KHTML, like Gecko) Chrome/14.0.897.0 Safari/5312','0','6'),
('3','harum','markstorphy.com','http://www.mcglynnmosciski.com','Opera/9.83 (Windows NT 5.0; en-US) Presto/2.9.178 Version/12.00','0','3'),
('4','consequatur','colliermarvin.com','http://ziemannparker.com','Opera/8.58 (Windows 98; sl-SI) Presto/2.9.181 Version/10.00','1','7'),
('5','iste','jenkins.com','http://kreiger.com','Mozilla/5.0 (iPod; U; CPU iPhone OS 3_0 like Mac OS X; sl-SI) AppleWebKit/531.8.3 (KHTML, like Gecko) Version/3.0.5 Mobile/8B111 Safari/6531.8.3','0','3'),
('6','ducimus','hirthe.net','http://anderson.com','Mozilla/5.0 (Windows CE) AppleWebKit/5351 (KHTML, like Gecko) Chrome/14.0.801.0 Safari/5351','1','4'),
('7','sed','haag.net','http://www.lang.com','Mozilla/5.0 (Macintosh; PPC Mac OS X 10_5_0 rv:5.0; sl-SI) AppleWebKit/533.50.3 (KHTML, like Gecko) Version/4.0.2 Safari/533.50.3','0','5'),
('8','error','stehrjenkins.info','http://armstrong.com','Opera/8.77 (Windows 95; en-US) Presto/2.9.168 Version/11.00','0','9'),
('9','aut','brakus.org','http://hoppe.com','Mozilla/5.0 (compatible; MSIE 8.0; Windows NT 5.2; Trident/3.0)','0','5'),
('10','totam','nitzsche.org','http://www.carter.biz','Mozilla/5.0 (Macintosh; PPC Mac OS X 10_7_2 rv:5.0) Gecko/20190319 Firefox/3.8','0','8'); 

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

INSERT INTO `categories` VALUES 
('1','electroinstrument','/electroinstrument'),
('2','izmeritelnyy_instrument','/izmeritelnyy_instrument'),
('3','krepezh','/krepezh'),
('4','metalloobrabatyvayushchiy_instrument','/metalloobrabatyvayushchiy_instrument'),
('5','mototechnika','/mototechnika'),
('6','pnevmooborudovanie','/pnevmooborudovanie'),
('7','rashodnie_materialy','/rashodnie_materialy'),
('8','slesarno_montazhnyy_instrument','/slesarno_montazhnyy_instrument'),
('9','stanki','/stanki'),
('10','stroitelnoe_oborudovanie','/stroitelnoe_oborudovanie'),
('11','svarochnoe_oborudovanie','/svarochnoe_oborudovanie');

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

INSERT INTO electroinstrument VALUES 
(10,1,"Bert Knight","441","mauris, rhoncus id, mollis nec, cursus a, enim. Suspendisse aliquet,",257),
(2,2,"Daquan Sawyer","369","Morbi vehicula. Pellentesque tincidunt tempus risus. Donec egestas. Duis ac",994),
(5,3,"Simon Acosta","686","mus. Donec dignissim magna a tortor. Nunc commodo auctor velit.",876),
(6,4,"Murphy Downs","526","rhoncus id, mollis nec, cursus a, enim. Suspendisse aliquet, sem",691),
(4,5,"Maxwell Floyd","315","Cras lorem lorem, luctus ut, pellentesque eget, dictum placerat, augue.",149),
(9,6,"Philip Henson","731","sit amet luctus vulputate, nisi sem semper erat, in consectetuer",836),
(8,7,"Lionel Anthony","846","sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam",191),
(6,8,"Keane Reed","195","luctus et ultrices posuere cubilia Curae; Donec tincidunt. Donec vitae",339),
(5,9,"Laith Wilkerson","676","mauris, aliquam eu, accumsan sed, facilisis vitae, orci. Phasellus dapibus",154),
(2,10,"Donovan Moore","923","semper pretium neque. Morbi quis urna. Nunc quis arcu vel",393);


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

INSERT INTO izmeritelnyy_instrument VALUES 
(8,11,"Simon Sullivan","403","posuere vulputate, lacus. Cras interdum. Nunc sollicitudin commodo ipsum. Suspendisse",24),
(4,12,"Donovan Washington","783","In at pede. Cras vulputate velit eu sem. Pellentesque ut",295),
(4,13,"Vernon Lambert","938","gravida non, sollicitudin a, malesuada id, erat. Etiam vestibulum massa",986),
(7,14,"Gray Gillespie","538","risus. Donec nibh enim, gravida sit amet, dapibus id, blandit",599),
(8,15,"Oren Hobbs","762","ipsum primis in faucibus orci luctus et ultrices posuere cubilia",506),
(9,16,"Carl Mccullough","456","purus gravida sagittis. Duis gravida. Praesent eu nulla at sem",406),
(1,17,"Davis Fowler","994","elit. Nulla facilisi. Sed neque. Sed eget lacus. Mauris non",438),
(9,18,"Edan Forbes","880","Fusce fermentum fermentum arcu. Vestibulum ante ipsum primis in faucibus",436),
(2,19,"Oliver George","991","ligula. Nullam feugiat placerat velit. Quisque varius. Nam porttitor scelerisque",937),
(6,20,"Leo Valentine","211","tempus risus. Donec egestas. Duis ac arcu. Nunc mauris. Morbi",502);


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

INSERT INTO krepezh VALUES 
(5,21,"Chancellor Cain","595","Donec egestas. Aliquam nec enim. Nunc ut erat. Sed nunc",556),
(9,22,"Vincent Bullock","460","at, nisi. Cum sociis natoque penatibus et magnis dis parturient",353),
(4,23,"Ryan Richards","968","nec, diam. Duis mi enim, condimentum eget, volutpat ornare, facilisis",332),
(2,24,"Jamal Chang","955","Vivamus euismod urna. Nullam lobortis quam a felis ullamcorper viverra.",112),
(10,25,"Drake Norris","369","ligula. Nullam enim. Sed nulla ante, iaculis nec, eleifend non,",478),
(7,26,"Kermit Cook","545","Mauris ut quam vel sapien imperdiet ornare. In faucibus. Morbi",928),
(2,27,"Tyler Glover","686","mauris. Morbi non sapien molestie orci tincidunt adipiscing. Mauris molestie",524),
(5,28,"Armando Fox","810","Integer vulputate, risus a ultricies adipiscing, enim mi tempor lorem,",44),
(7,29,"Abraham Tran","328","Nullam lobortis quam a felis ullamcorper viverra. Maecenas iaculis aliquet",110),
(8,30,"Chancellor Price","790","consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus.",110);


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

INSERT INTO metalloobrabatyvayushchiy_instrument VALUES 
(8,31,"Samson Foley","804","ac tellus. Suspendisse sed dolor. Fusce mi lorem, vehicula et,",78),
(10,32,"Vance Chavez","658","quis accumsan convallis, ante lectus convallis est, vitae sodales nisi",662),
(1,33,"Bruno Montgomery","159","ac, eleifend vitae, erat. Vivamus nisi. Mauris nulla. Integer urna.",751),
(6,34,"Deacon Holden","491","vestibulum massa rutrum magna. Cras convallis convallis dolor. Quisque tincidunt",986),
(3,35,"Preston Winters","185","magna a neque. Nullam ut nisi a odio semper cursus.",776),
(8,36,"Scott Copeland","364","faucibus orci luctus et ultrices posuere cubilia Curae; Donec tincidunt.",489),
(1,37,"Tucker Crawford","222","lacus. Quisque imperdiet, erat nonummy ultricies ornare, elit elit fermentum",554),
(2,38,"Dieter Clay","921","nec, eleifend non, dapibus rutrum, justo. Praesent luctus. Curabitur egestas",358),
(10,39,"Ray Dorsey","449","nulla vulputate dui, nec tempus mauris erat eget ipsum. Suspendisse",52),
(7,40,"Lucas Maynard","788","Duis volutpat nunc sit amet metus. Aliquam erat volutpat. Nulla",12);


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

INSERT INTO mototechnika VALUES 
(1,41,"Grant Drake","844","tristique neque venenatis lacus. Etiam bibendum fermentum metus. Aenean sed",34),
(6,42,"Isaiah Atkinson","741","eu nibh vulputate mauris sagittis placerat. Cras dictum ultricies ligula.",97),
(7,43,"Prescott Booker","571","ornare. Fusce mollis. Duis sit amet diam eu dolor egestas",27),
(7,44,"Dominic Trevino","782","auctor quis, tristique ac, eleifend vitae, erat. Vivamus nisi. Mauris",432),
(1,45,"Talon Booker","280","lacus vestibulum lorem, sit amet ultricies sem magna nec quam.",642),
(7,46,"Jermaine Waters","334","ac orci. Ut semper pretium neque. Morbi quis urna. Nunc",622),
(3,47,"Graiden Rivers","239","risus, at fringilla purus mauris a nunc. In at pede.",581),
(8,48,"Tyrone Whitley","274","dictum magna. Ut tincidunt orci quis lectus. Nullam suscipit, est",526),
(9,49,"Gray Vincent","215","dictum eu, eleifend nec, malesuada ut, sem. Nulla interdum. Curabitur",729),
(3,50,"Fitzgerald Reyes","231","senectus et netus et malesuada fames ac turpis egestas. Fusce",830);


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

INSERT INTO pnevmooborudovanie VALUES 
(9,51,"Xavier Guerra","374","ante ipsum primis in faucibus orci luctus et ultrices posuere",738),
(1,52,"Howard Mcmillan","700","ut, nulla. Cras eu tellus eu augue porttitor interdum. Sed",804),
(7,53,"Scott Winters","580","erat semper rutrum. Fusce dolor quam, elementum at, egestas a,",103),
(2,54,"Tanek Ayers","342","nec ante. Maecenas mi felis, adipiscing fringilla, porttitor vulputate, posuere",26),
(1,55,"Randall Hull","655","commodo tincidunt nibh. Phasellus nulla. Integer vulputate, risus a ultricies",846),
(7,56,"Tobias Mathis","839","erat vel pede blandit congue. In scelerisque scelerisque dui. Suspendisse",631),
(4,57,"Patrick Bowers","777","cubilia Curae; Donec tincidunt. Donec vitae erat vel pede blandit",939),
(3,58,"Wayne Prince","341","imperdiet dictum magna. Ut tincidunt orci quis lectus. Nullam suscipit,",364),
(9,59,"Roth Gregory","649","inceptos hymenaeos. Mauris ut quam vel sapien imperdiet ornare. In",522),
(2,60,"Charles Price","994","magna. Praesent interdum ligula eu enim. Etiam imperdiet dictum magna.",294);


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

INSERT INTO rashodnie_materialy VALUES 
(2,61,"Chester Woodward","132","Mauris molestie pharetra nibh. Aliquam ornare, libero at auctor ullamcorper,",298),
(1,62,"Zephania Valenzuela","454","malesuada malesuada. Integer id magna et ipsum cursus vestibulum. Mauris",171),
(6,63,"Abbot Head","653","taciti sociosqu ad litora torquent per conubia nostra, per inceptos",1000),
(1,64,"Timothy Mcdowell","180","blandit at, nisi. Cum sociis natoque penatibus et magnis dis",321),
(7,65,"Clayton Townsend","834","elit, pellentesque a, facilisis non, bibendum sed, est. Nunc laoreet",654),
(4,66,"Gareth Patel","728","aliquam arcu. Aliquam ultrices iaculis odio. Nam interdum enim non",391),
(6,67,"Barclay Wagner","433","nec tempus mauris erat eget ipsum. Suspendisse sagittis. Nullam vitae",164),
(8,68,"Zachery Leonard","946","amet massa. Quisque porttitor eros nec tellus. Nunc lectus pede,",135),
(6,69,"Kibo Farmer","649","molestie sodales. Mauris blandit enim consequat purus. Maecenas libero est,",608),
(9,70,"Andrew Rodriquez","771","ipsum. Donec sollicitudin adipiscing ligula. Aenean gravida nunc sed pede.",822);


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

INSERT INTO slesarno_montazhnyy_instrument VALUES 
(9,71,"Justin Gates","734","non, lacinia at, iaculis quis, pede. Praesent eu dui. Cum",892),
(8,72,"Henry Keith","494","a, dui. Cras pellentesque. Sed dictum. Proin eget odio. Aliquam",11),
(8,73,"Hall Pennington","513","Ut tincidunt vehicula risus. Nulla eget metus eu erat semper",796),
(6,74,"Scott Lee","306","Nulla tempor augue ac ipsum. Phasellus vitae mauris sit amet",632),
(1,75,"Grady Avery","276","sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos.",322),
(10,76,"Fulton Haynes","682","dictum eleifend, nunc risus varius orci, in consequat enim diam",880),
(1,77,"Ivor Jordan","530","tincidunt orci quis lectus. Nullam suscipit, est ac facilisis facilisis,",425),
(2,78,"Lawrence Parks","405","ligula. Nullam feugiat placerat velit. Quisque varius. Nam porttitor scelerisque",181),
(2,79,"Wing Kane","845","mauris sapien, cursus in, hendrerit consectetuer, cursus et, magna. Praesent",650),
(1,80,"Porter Burton","634","consequat, lectus sit amet luctus vulputate, nisi sem semper erat,",302);


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

INSERT INTO stanki VALUES 
(3,81,"Ray Stanton","526","egestas a, scelerisque sed, sapien. Nunc pulvinar arcu et pede.",807),
(6,82,"Shad Middleton","219","eu dui. Cum sociis natoque penatibus et magnis dis parturient",71),
(6,83,"Edward Carter","334","ultrices a, auctor non, feugiat nec, diam. Duis mi enim,",191),
(6,84,"Aaron Hobbs","996","nibh sit amet orci. Ut sagittis lobortis mauris. Suspendisse aliquet",338),
(9,85,"Isaiah Armstrong","451","egestas blandit. Nam nulla magna, malesuada vel, convallis in, cursus",920),
(1,86,"Rogan Lang","879","vestibulum nec, euismod in, dolor. Fusce feugiat. Lorem ipsum dolor",321),
(3,87,"Ryan Pickett","835","vel, vulputate eu, odio. Phasellus at augue id ante dictum",137),
(9,88,"Gannon Dillon","229","in molestie tortor nibh sit amet orci. Ut sagittis lobortis",835),
(7,89,"Axel Fitzpatrick","220","mollis. Integer tincidunt aliquam arcu. Aliquam ultrices iaculis odio. Nam",884),
(8,90,"Cruz Wilder","485","auctor. Mauris vel turpis. Aliquam adipiscing lobortis risus. In mi",106);


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

INSERT INTO stroitelnoe_oborudovanie VALUES 
(10,91,"Kasper Stanley","224","dui quis accumsan convallis, ante lectus convallis est, vitae sodales",645),
(3,92,"Thor Horn","241","posuere cubilia Curae; Donec tincidunt. Donec vitae erat vel pede",213),
(6,93,"Brent Shelton","829","ipsum ac mi eleifend egestas. Sed pharetra, felis eget varius",739),
(2,94,"Jeremy Tyler","767","dictum ultricies ligula. Nullam enim. Sed nulla ante, iaculis nec,",81),
(10,95,"Neville Perry","311","amet nulla. Donec non justo. Proin non massa non ante",381),
(6,96,"Colton Austin","664","Cras convallis convallis dolor. Quisque tincidunt pede ac urna. Ut",212),
(9,97,"Yuli Hull","495","nec metus facilisis lorem tristique aliquet. Phasellus fermentum convallis ligula.",11),
(2,98,"Arden Espinoza","634","sagittis placerat. Cras dictum ultricies ligula. Nullam enim. Sed nulla",469),
(1,99,"Kuame Reese","610","mus. Aenean eget magna. Suspendisse tristique neque venenatis lacus. Etiam",726),
(8,100,"Reece Dillard","144","nunc sed pede. Cum sociis natoque penatibus et magnis dis",224);


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

INSERT INTO svarochnoe_oborudovanie VALUES 
(1,1,"Colorado Richard","997","molestie in, tempus eu, ligula. Aenean euismod mauris eu elit.",37),
(5,2,"Ira Banks","497","nunc nulla vulputate dui, nec tempus mauris erat eget ipsum.",976),
(6,3,"Cadman Schmidt","487","est ac facilisis facilisis, magna tellus faucibus leo, in lobortis",301),
(9,4,"Len Flowers","128","sit amet orci. Ut sagittis lobortis mauris. Suspendisse aliquet molestie",707),
(5,5,"Dale Oneal","145","mus. Aenean eget magna. Suspendisse tristique neque venenatis lacus. Etiam",76),
(3,6,"Paki Baird","210","nascetur ridiculus mus. Proin vel nisl. Quisque fringilla euismod enim.",410),
(10,7,"Gregory Gallagher","480","eu dui. Cum sociis natoque penatibus et magnis dis parturient",67),
(6,8,"Allen Bolton","821","facilisis vitae, orci. Phasellus dapibus quam quis diam. Pellentesque habitant",8),
(3,9,"Kuame Walter","252","cursus et, eros. Proin ultrices. Duis volutpat nunc sit amet",169),
(10,10,"Thomas Rodriguez","242","Fusce diam nunc, ullamcorper eu, euismod ac, fermentum vel, mauris.",516);

