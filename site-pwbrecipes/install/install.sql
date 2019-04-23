# --- WireDatabaseBackup {"time":"2019-04-23 21:04:15","user":"","dbName":"pwrecipes","description":"","tables":[],"excludeTables":["pages_drafts","pages_roles","permissions","roles","roles_permissions","users","users_roles","user","role","permission"],"excludeCreateTables":[],"excludeExportTables":["field_roles","field_permissions","field_email","field_pass","caches","session_login_throttle","page_path_history"]}

DROP TABLE IF EXISTS `caches`;
CREATE TABLE `caches` (
  `name` varchar(250) NOT NULL,
  `data` mediumtext NOT NULL,
  `expires` datetime NOT NULL,
  PRIMARY KEY (`name`),
  KEY `expires` (`expires`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `field_admin_theme`;
CREATE TABLE `field_admin_theme` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_amount`;
CREATE TABLE `field_amount` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_amount` (`pages_id`, `data`) VALUES('1087', '1');
INSERT INTO `field_amount` (`pages_id`, `data`) VALUES('1085', '2');
INSERT INTO `field_amount` (`pages_id`, `data`) VALUES('1084', '1');
INSERT INTO `field_amount` (`pages_id`, `data`) VALUES('1082', '1');
INSERT INTO `field_amount` (`pages_id`, `data`) VALUES('1081', '1');
INSERT INTO `field_amount` (`pages_id`, `data`) VALUES('1078', '1');
INSERT INTO `field_amount` (`pages_id`, `data`) VALUES('1077', '1');
INSERT INTO `field_amount` (`pages_id`, `data`) VALUES('1074', '1');
INSERT INTO `field_amount` (`pages_id`, `data`) VALUES('1073', '1');
INSERT INTO `field_amount` (`pages_id`, `data`) VALUES('1070', '2');
INSERT INTO `field_amount` (`pages_id`, `data`) VALUES('1069', '1');
INSERT INTO `field_amount` (`pages_id`, `data`) VALUES('1088', '1');
INSERT INTO `field_amount` (`pages_id`, `data`) VALUES('1092', '500');
INSERT INTO `field_amount` (`pages_id`, `data`) VALUES('1099', '500');
INSERT INTO `field_amount` (`pages_id`, `data`) VALUES('1103', '2');
INSERT INTO `field_amount` (`pages_id`, `data`) VALUES('1104', '1');
INSERT INTO `field_amount` (`pages_id`, `data`) VALUES('1105', '1');
INSERT INTO `field_amount` (`pages_id`, `data`) VALUES('1106', '1');

DROP TABLE IF EXISTS `field_body`;
CREATE TABLE `field_body` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1', '<p><strong><em>PWB</em>Recipes</strong> is an advanced version of the prior released <a href=\"https://github.com/webmanufaktur/pwrecipes\">pwRecipes Site Profile</a>. </p>\n\n<h2>New Approach</h2>\n\n<p><strong>The new approach separates dishes from recipes.</strong></p>\n\n<p>When talking about recipes we often think of complete dishes as a result. That\'s totally fine but what about something that could help us to show more of our awesome dishes.</p>\n\n<p>In addition to the existing section of recipes there is a new option called <strong>dishes</strong>. Dishes are <em>bundles</em> of recipes.</p>\n\n<h2>New Frontend</h2>\n\n<p>While <strong>pwRecipes</strong> came without any frontend styling this new <a href=\"https://copypaste.pw/barebones/\" target=\"_blank\" rel=\"noreferrer noopener\">PWB</a> version comes with a basic UIKIT frontend that can therefore be easily extended in any direction.</p>\n\n<p>CSS and JS files were provided via <a href=\"https://cdnjs.com/\" target=\"_blank\" rel=\"noreferrer noopener\">Cloudflare CDN</a>.</p>\n\n<p> </p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1101', '<p>Doner buffalo drumstick tail rump shank boudin salami ground round pancetta short loin. Andouille prosciutto venison, pork loin beef ribs ground round sirloin porchetta. Venison kevin short loin jowl ham biltong bacon rump tri-tip ham hock. Andouille ham flank, sirloin sausage jerky chicken ground round meatball leberkas cupim.</p>\n\n<p>Hamburger tenderloin boudin ball tip turducken andouille porchetta shankle. Turducken shankle pork leberkas chuck kielbasa. Shoulder tri-tip short ribs doner, porchetta alcatra hamburger ground round brisket meatball capicola venison. Biltong corned beef picanha, capicola shank pork loin bresaola rump filet mignon meatball shankle kielbasa. Sausage bresaola rump, porchetta cupim salami picanha. Kevin chuck venison meatball, landjaeger cupim ham alcatra jowl.</p>');

DROP TABLE IF EXISTS `field_email`;
CREATE TABLE `field_email` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `field_images`;
CREATE TABLE `field_images` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `filedata` mediumtext,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`),
  FULLTEXT KEY `filedata` (`filedata`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_ingredient`;
CREATE TABLE `field_ingredient` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_ingredient` (`pages_id`, `data`, `sort`) VALUES('1069', '1071', '0');
INSERT INTO `field_ingredient` (`pages_id`, `data`, `sort`) VALUES('1081', '1071', '0');
INSERT INTO `field_ingredient` (`pages_id`, `data`, `sort`) VALUES('1084', '1071', '0');
INSERT INTO `field_ingredient` (`pages_id`, `data`, `sort`) VALUES('1070', '1072', '0');
INSERT INTO `field_ingredient` (`pages_id`, `data`, `sort`) VALUES('1073', '1075', '0');
INSERT INTO `field_ingredient` (`pages_id`, `data`, `sort`) VALUES('1074', '1076', '0');
INSERT INTO `field_ingredient` (`pages_id`, `data`, `sort`) VALUES('1088', '1076', '0');
INSERT INTO `field_ingredient` (`pages_id`, `data`, `sort`) VALUES('1077', '1079', '0');
INSERT INTO `field_ingredient` (`pages_id`, `data`, `sort`) VALUES('1078', '1080', '0');
INSERT INTO `field_ingredient` (`pages_id`, `data`, `sort`) VALUES('1082', '1083', '0');
INSERT INTO `field_ingredient` (`pages_id`, `data`, `sort`) VALUES('1085', '1086', '0');
INSERT INTO `field_ingredient` (`pages_id`, `data`, `sort`) VALUES('1087', '1089', '0');
INSERT INTO `field_ingredient` (`pages_id`, `data`, `sort`) VALUES('1092', '1093', '0');
INSERT INTO `field_ingredient` (`pages_id`, `data`, `sort`) VALUES('1099', '1100', '0');
INSERT INTO `field_ingredient` (`pages_id`, `data`, `sort`) VALUES('1103', '1107', '0');
INSERT INTO `field_ingredient` (`pages_id`, `data`, `sort`) VALUES('1104', '1108', '0');
INSERT INTO `field_ingredient` (`pages_id`, `data`, `sort`) VALUES('1105', '1109', '0');
INSERT INTO `field_ingredient` (`pages_id`, `data`, `sort`) VALUES('1106', '1110', '0');

DROP TABLE IF EXISTS `field_ingredients`;
CREATE TABLE `field_ingredients` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `count` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(1)),
  KEY `count` (`count`,`pages_id`),
  KEY `parent_id` (`parent_id`,`pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_ingredients` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1035', '1084,1085', '2', '1036');
INSERT INTO `field_ingredients` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1037', '1081,1082', '2', '1038');
INSERT INTO `field_ingredients` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1039', '1073,1074', '2', '1040');
INSERT INTO `field_ingredients` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1041', '1077,1078', '2', '1042');
INSERT INTO `field_ingredients` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1043', '1087,1088', '2', '1044');
INSERT INTO `field_ingredients` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1067', '1069,1070', '2', '1068');
INSERT INTO `field_ingredients` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1090', '1092', '1', '1091');
INSERT INTO `field_ingredients` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1095', '', '0', '1096');
INSERT INTO `field_ingredients` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1097', '1099,1103,1104,1105,1106', '5', '1098');

DROP TABLE IF EXISTS `field_navmain`;
CREATE TABLE `field_navmain` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_navmain` (`pages_id`, `data`, `sort`) VALUES('1066', '1017', '2');
INSERT INTO `field_navmain` (`pages_id`, `data`, `sort`) VALUES('1066', '1018', '0');
INSERT INTO `field_navmain` (`pages_id`, `data`, `sort`) VALUES('1066', '1033', '1');

DROP TABLE IF EXISTS `field_pass`;
CREATE TABLE `field_pass` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` char(40) NOT NULL,
  `salt` char(32) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=ascii;

DROP TABLE IF EXISTS `field_permissions`;
CREATE TABLE `field_permissions` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `field_preparation`;
CREATE TABLE `field_preparation` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_preparation` (`pages_id`, `data`) VALUES('1039', '<p>Turducken tail hamburger ribeye. Jerky capicola pancetta turducken. Ribeye pork hamburger, frankfurter leberkas ground round ham hock pastrami porchetta turkey. Shoulder chuck shankle bresaola sausage beef.</p>\n\n<p>Rump cupim beef ribs cow doner ball tip ground round meatball. Hamburger meatloaf brisket corned beef shank cow. T-bone biltong frankfurter turkey pig corned beef strip steak landjaeger. Chicken sausage strip steak shoulder picanha filet mignon boudin shankle. Beef ribs porchetta burgdoggen, capicola bacon chicken brisket doner. Filet mignon prosciutto t-bone meatloaf bresaola cow chicken swine.</p>');
INSERT INTO `field_preparation` (`pages_id`, `data`) VALUES('1041', '<p>Turducken tail hamburger ribeye. Jerky capicola pancetta turducken. Ribeye pork hamburger, frankfurter leberkas ground round ham hock pastrami porchetta turkey. Shoulder chuck shankle bresaola sausage beef.</p>\n\n<p>Rump cupim beef ribs cow doner ball tip ground round meatball. Hamburger meatloaf brisket corned beef shank cow. T-bone biltong frankfurter turkey pig corned beef strip steak landjaeger. Chicken sausage strip steak shoulder picanha filet mignon boudin shankle. Beef ribs porchetta burgdoggen, capicola bacon chicken brisket doner. Filet mignon prosciutto t-bone meatloaf bresaola cow chicken swine.</p>');
INSERT INTO `field_preparation` (`pages_id`, `data`) VALUES('1037', '<p>Turducken tail hamburger ribeye. Jerky capicola pancetta turducken. Ribeye pork hamburger, frankfurter leberkas ground round ham hock pastrami porchetta turkey. Shoulder chuck shankle bresaola sausage beef.</p>\n\n<p>Rump cupim beef ribs cow doner ball tip ground round meatball. Hamburger meatloaf brisket corned beef shank cow. T-bone biltong frankfurter turkey pig corned beef strip steak landjaeger. Chicken sausage strip steak shoulder picanha filet mignon boudin shankle. Beef ribs porchetta burgdoggen, capicola bacon chicken brisket doner. Filet mignon prosciutto t-bone meatloaf bresaola cow chicken swine.</p>');
INSERT INTO `field_preparation` (`pages_id`, `data`) VALUES('1035', '<p>Turducken tail hamburger ribeye. Jerky capicola pancetta turducken. Ribeye pork hamburger, frankfurter leberkas ground round ham hock pastrami porchetta turkey. Shoulder chuck shankle bresaola sausage beef.</p>\n\n<p>Rump cupim beef ribs cow doner ball tip ground round meatball. Hamburger meatloaf brisket corned beef shank cow. T-bone biltong frankfurter turkey pig corned beef strip steak landjaeger. Chicken sausage strip steak shoulder picanha filet mignon boudin shankle. Beef ribs porchetta burgdoggen, capicola bacon chicken brisket doner. Filet mignon prosciutto t-bone meatloaf bresaola cow chicken swine.</p>');
INSERT INTO `field_preparation` (`pages_id`, `data`) VALUES('1043', '<p>Turducken tail hamburger ribeye. Jerky capicola pancetta turducken. Ribeye pork hamburger, frankfurter leberkas ground round ham hock pastrami porchetta turkey. Shoulder chuck shankle bresaola sausage beef.</p>\n\n<p>Rump cupim beef ribs cow doner ball tip ground round meatball. Hamburger meatloaf brisket corned beef shank cow. T-bone biltong frankfurter turkey pig corned beef strip steak landjaeger. Chicken sausage strip steak shoulder picanha filet mignon boudin shankle. Beef ribs porchetta burgdoggen, capicola bacon chicken brisket doner. Filet mignon prosciutto t-bone meatloaf bresaola cow chicken swine.</p>');
INSERT INTO `field_preparation` (`pages_id`, `data`) VALUES('1067', '<p>Turducken tail hamburger ribeye. Jerky capicola pancetta turducken. Ribeye pork hamburger, frankfurter leberkas ground round ham hock pastrami porchetta turkey. Shoulder chuck shankle bresaola sausage beef.</p>\n\n<p>Rump cupim beef ribs cow doner ball tip ground round meatball. Hamburger meatloaf brisket corned beef shank cow. T-bone biltong frankfurter turkey pig corned beef strip steak landjaeger. Chicken sausage strip steak shoulder picanha filet mignon boudin shankle. Beef ribs porchetta burgdoggen, capicola bacon chicken brisket doner. Filet mignon prosciutto t-bone meatloaf bresaola cow chicken swine.</p>');
INSERT INTO `field_preparation` (`pages_id`, `data`) VALUES('1090', '<p>Turducken tail hamburger ribeye. Jerky capicola pancetta turducken. Ribeye pork hamburger, frankfurter leberkas ground round ham hock pastrami porchetta turkey. Shoulder chuck shankle bresaola sausage beef.</p>\n\n<p>Rump cupim beef ribs cow doner ball tip ground round meatball. Hamburger meatloaf brisket corned beef shank cow. T-bone biltong frankfurter turkey pig corned beef strip steak landjaeger. Chicken sausage strip steak shoulder picanha filet mignon boudin shankle. Beef ribs porchetta burgdoggen, capicola bacon chicken brisket doner. Filet mignon prosciutto t-bone meatloaf bresaola cow chicken swine.</p>');
INSERT INTO `field_preparation` (`pages_id`, `data`) VALUES('1095', '<p>Turducken tail hamburger ribeye. Jerky capicola pancetta turducken. Ribeye pork hamburger, frankfurter leberkas ground round ham hock pastrami porchetta turkey. Shoulder chuck shankle bresaola sausage beef.</p>\n\n<p>Rump cupim beef ribs cow doner ball tip ground round meatball. Hamburger meatloaf brisket corned beef shank cow. T-bone biltong frankfurter turkey pig corned beef strip steak landjaeger. Chicken sausage strip steak shoulder picanha filet mignon boudin shankle. Beef ribs porchetta burgdoggen, capicola bacon chicken brisket doner. Filet mignon prosciutto t-bone meatloaf bresaola cow chicken swine.</p>');
INSERT INTO `field_preparation` (`pages_id`, `data`) VALUES('1097', '<p>Turducken tail hamburger ribeye. Jerky capicola pancetta turducken. Ribeye pork hamburger, frankfurter leberkas ground round ham hock pastrami porchetta turkey. Shoulder chuck shankle bresaola sausage beef.</p>\n\n<p>Rump cupim beef ribs cow doner ball tip ground round meatball. Hamburger meatloaf brisket corned beef shank cow. T-bone biltong frankfurter turkey pig corned beef strip steak landjaeger. Chicken sausage strip steak shoulder picanha filet mignon boudin shankle. Beef ribs porchetta burgdoggen, capicola bacon chicken brisket doner. Filet mignon prosciutto t-bone meatloaf bresaola cow chicken swine.</p>');

DROP TABLE IF EXISTS `field_process`;
CREATE TABLE `field_process` (
  `pages_id` int(11) NOT NULL DEFAULT '0',
  `data` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_process` (`pages_id`, `data`) VALUES('6', '17');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('3', '12');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('8', '12');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('9', '14');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('10', '7');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('11', '47');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('16', '48');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('300', '104');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('21', '50');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('29', '66');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('23', '10');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('304', '138');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('31', '136');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('22', '76');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('30', '68');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('303', '129');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('2', '87');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('302', '121');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('301', '109');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('28', '76');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1007', '150');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1010', '159');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1012', '161');

DROP TABLE IF EXISTS `field_recipes`;
CREATE TABLE `field_recipes` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_recipes` (`pages_id`, `data`, `sort`) VALUES('1102', '1039', '0');
INSERT INTO `field_recipes` (`pages_id`, `data`, `sort`) VALUES('1094', '1067', '1');
INSERT INTO `field_recipes` (`pages_id`, `data`, `sort`) VALUES('1094', '1090', '0');
INSERT INTO `field_recipes` (`pages_id`, `data`, `sort`) VALUES('1101', '1090', '0');
INSERT INTO `field_recipes` (`pages_id`, `data`, `sort`) VALUES('1102', '1095', '1');
INSERT INTO `field_recipes` (`pages_id`, `data`, `sort`) VALUES('1101', '1097', '1');

DROP TABLE IF EXISTS `field_roles`;
CREATE TABLE `field_roles` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `field_summary`;
CREATE TABLE `field_summary` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_summary` (`pages_id`, `data`) VALUES('1018', '<p>Recipes tell you how to prepare and cook certain parts of a dish and what ingredients you need for them.</p>');
INSERT INTO `field_summary` (`pages_id`, `data`) VALUES('1017', '<p>This is all we ever used for our recipes and dishes.</p>');
INSERT INTO `field_summary` (`pages_id`, `data`) VALUES('1', '<p>A ProcessWire Barebone Site Profile</p>');
INSERT INTO `field_summary` (`pages_id`, `data`) VALUES('1033', '<p>Dishes are bundles of recipes.</p>');
INSERT INTO `field_summary` (`pages_id`, `data`) VALUES('1039', '<p>Bacon ipsum dolor amet brisket spare ribs pancetta tri-tip, tail fatback salami picanha swine ribeye frankfurter ground round. Ground round pork chop leberkas flank chuck corned beef. Cow cupim salami, ham hock pastrami chuck shankle venison hamburger meatball pork loin. Drumstick landjaeger ham swine ground round. Spare ribs pork loin short ribs pork belly kielbasa boudin, shank ham frankfurter bresaola beef ham hock buffalo picanha jowl.</p>');
INSERT INTO `field_summary` (`pages_id`, `data`) VALUES('1041', '<p>Bacon ipsum dolor amet brisket spare ribs pancetta tri-tip, tail fatback salami picanha swine ribeye frankfurter ground round. Ground round pork chop leberkas flank chuck corned beef. Cow cupim salami, ham hock pastrami chuck shankle venison hamburger meatball pork loin. Drumstick landjaeger ham swine ground round. Spare ribs pork loin short ribs pork belly kielbasa boudin, shank ham frankfurter bresaola beef ham hock buffalo picanha jowl.</p>');
INSERT INTO `field_summary` (`pages_id`, `data`) VALUES('1037', '<p>Bacon ipsum dolor amet brisket spare ribs pancetta tri-tip, tail fatback salami picanha swine ribeye frankfurter ground round. Ground round pork chop leberkas flank chuck corned beef. Cow cupim salami, ham hock pastrami chuck shankle venison hamburger meatball pork loin. Drumstick landjaeger ham swine ground round. Spare ribs pork loin short ribs pork belly kielbasa boudin, shank ham frankfurter bresaola beef ham hock buffalo picanha jowl.</p>');
INSERT INTO `field_summary` (`pages_id`, `data`) VALUES('1035', '<p>Bacon ipsum dolor amet brisket spare ribs pancetta tri-tip, tail fatback salami picanha swine ribeye frankfurter ground round. Ground round pork chop leberkas flank chuck corned beef. Cow cupim salami, ham hock pastrami chuck shankle venison hamburger meatball pork loin. Drumstick landjaeger ham swine ground round. Spare ribs pork loin short ribs pork belly kielbasa boudin, shank ham frankfurter bresaola beef ham hock buffalo picanha jowl.</p>');
INSERT INTO `field_summary` (`pages_id`, `data`) VALUES('1043', '<p>Bacon ipsum dolor amet brisket spare ribs pancetta tri-tip, tail fatback salami picanha swine ribeye frankfurter ground round. Ground round pork chop leberkas flank chuck corned beef. Cow cupim salami, ham hock pastrami chuck shankle venison hamburger meatball pork loin. Drumstick landjaeger ham swine ground round. Spare ribs pork loin short ribs pork belly kielbasa boudin, shank ham frankfurter bresaola beef ham hock buffalo picanha jowl.</p>');
INSERT INTO `field_summary` (`pages_id`, `data`) VALUES('1067', '<p>Bacon ipsum dolor amet brisket spare ribs pancetta tri-tip, tail fatback salami picanha swine ribeye frankfurter ground round. Ground round pork chop leberkas flank chuck corned beef. Cow cupim salami, ham hock pastrami chuck shankle venison hamburger meatball pork loin. Drumstick landjaeger ham swine ground round. Spare ribs pork loin short ribs pork belly kielbasa boudin, shank ham frankfurter bresaola beef ham hock buffalo picanha jowl.</p>');
INSERT INTO `field_summary` (`pages_id`, `data`) VALUES('1090', '<p>Bacon ipsum dolor amet brisket spare ribs pancetta tri-tip, tail fatback salami picanha swine ribeye frankfurter ground round. Ground round pork chop leberkas flank chuck corned beef. Cow cupim salami, ham hock pastrami chuck shankle venison hamburger meatball pork loin. Drumstick landjaeger ham swine ground round. Spare ribs pork loin short ribs pork belly kielbasa boudin, shank ham frankfurter bresaola beef ham hock buffalo picanha jowl.</p>');
INSERT INTO `field_summary` (`pages_id`, `data`) VALUES('1095', '<p>Bacon ipsum dolor amet brisket spare ribs pancetta tri-tip, tail fatback salami picanha swine ribeye frankfurter ground round. Ground round pork chop leberkas flank chuck corned beef. Cow cupim salami, ham hock pastrami chuck shankle venison hamburger meatball pork loin. Drumstick landjaeger ham swine ground round. Spare ribs pork loin short ribs pork belly kielbasa boudin, shank ham frankfurter bresaola beef ham hock buffalo picanha jowl.</p>');
INSERT INTO `field_summary` (`pages_id`, `data`) VALUES('1097', '<p>Bacon ipsum dolor amet brisket spare ribs pancetta tri-tip, tail fatback salami picanha swine ribeye frankfurter ground round. Ground round pork chop leberkas flank chuck corned beef. Cow cupim salami, ham hock pastrami chuck shankle venison hamburger meatball pork loin. Drumstick landjaeger ham swine ground round. Spare ribs pork loin short ribs pork belly kielbasa boudin, shank ham frankfurter bresaola beef ham hock buffalo picanha jowl.</p>');
INSERT INTO `field_summary` (`pages_id`, `data`) VALUES('1101', '<p>Spicy jalapeno bacon ipsum dolor amet kevin prosciutto ham shank sirloin.</p>');

DROP TABLE IF EXISTS `field_title`;
CREATE TABLE `field_title` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_title` (`pages_id`, `data`) VALUES('11', 'Templates');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('16', 'Fields');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('22', 'Setup');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('3', 'Pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('6', 'Add Page');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('8', 'Tree');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('9', 'Save Sort');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('10', 'Edit');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('21', 'Modules');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('29', 'Users');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('30', 'Roles');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('2', 'Admin');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('7', 'Trash');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('27', '404 Not Found');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('302', 'Insert Link');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('23', 'Login');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('304', 'Profile');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('301', 'Empty Trash');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('300', 'Search');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('303', 'Insert Image');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('28', 'Access');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('31', 'Permissions');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('32', 'Edit pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('34', 'Delete pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('35', 'Move pages (change parent)');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('36', 'View pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('50', 'Sort child pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('51', 'Change templates on pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('52', 'Administer users');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('53', 'User can update profile/password');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('54', 'Lock or unlock a page');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1', 'PWBRecipes');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1006', 'Use Page Lister');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1007', 'Find');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1010', 'Recent');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1011', 'Can see recently edited pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1012', 'Logs');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1013', 'Can view system logs');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1014', 'Can manage system logs');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1015', 'Repeaters');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1016', 'ingredients');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1017', 'Ingredients');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1018', 'Recipes');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1091', 'spaghetti');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1090', 'Spaghetti');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1089', 'Sour');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1086', 'Hollandaise');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1033', 'Dishes');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1035', 'Sauce Hollandaise');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1036', 'sauce-hollandaise');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1037', 'Sauce Bernaise');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1038', 'sauce-bernaise');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1039', 'Pizza Dough');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1040', 'dough-for-pizza');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1041', 'Puff Pastry');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1042', 'dough-for-croissants');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1043', 'Sour Dough');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1044', 'dough-sour-dough');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1067', 'Marinara Sauce');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1083', 'Béarnaise');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1080', 'Pastry');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1079', 'Puff');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1076', 'Dough');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1075', 'Pizza');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1072', 'Marinara');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1071', 'Sauce');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1068', 'marinara-sauce');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1066', 'Settings');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1093', 'Spaghetti');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1094', 'Spaghetti Marinara');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1095', 'Tuna');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1096', 'tuna');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1097', 'Meatballs');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1098', 'meatballs');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1100', 'Ground Beef');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1101', 'Spaghetti Meatballs');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1102', 'Tuna Pizza');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1107', 'Garlic');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1108', 'Salt');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1109', 'Pepper');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1110', 'Taco Seasoning');

DROP TABLE IF EXISTS `field_unit`;
CREATE TABLE `field_unit` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(10) unsigned NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_unit` (`pages_id`, `data`, `sort`) VALUES('1087', '5', '0');
INSERT INTO `field_unit` (`pages_id`, `data`, `sort`) VALUES('1085', '5', '0');
INSERT INTO `field_unit` (`pages_id`, `data`, `sort`) VALUES('1084', '3', '0');
INSERT INTO `field_unit` (`pages_id`, `data`, `sort`) VALUES('1082', '5', '0');
INSERT INTO `field_unit` (`pages_id`, `data`, `sort`) VALUES('1081', '3', '0');
INSERT INTO `field_unit` (`pages_id`, `data`, `sort`) VALUES('1078', '2', '0');
INSERT INTO `field_unit` (`pages_id`, `data`, `sort`) VALUES('1077', '5', '0');
INSERT INTO `field_unit` (`pages_id`, `data`, `sort`) VALUES('1074', '5', '0');
INSERT INTO `field_unit` (`pages_id`, `data`, `sort`) VALUES('1073', '5', '0');
INSERT INTO `field_unit` (`pages_id`, `data`, `sort`) VALUES('1070', '5', '0');
INSERT INTO `field_unit` (`pages_id`, `data`, `sort`) VALUES('1069', '3', '0');
INSERT INTO `field_unit` (`pages_id`, `data`, `sort`) VALUES('1088', '5', '0');
INSERT INTO `field_unit` (`pages_id`, `data`, `sort`) VALUES('1092', '1', '0');
INSERT INTO `field_unit` (`pages_id`, `data`, `sort`) VALUES('1099', '1', '0');
INSERT INTO `field_unit` (`pages_id`, `data`, `sort`) VALUES('1103', '5', '0');
INSERT INTO `field_unit` (`pages_id`, `data`, `sort`) VALUES('1104', '4', '0');
INSERT INTO `field_unit` (`pages_id`, `data`, `sort`) VALUES('1105', '4', '0');
INSERT INTO `field_unit` (`pages_id`, `data`, `sort`) VALUES('1106', '6', '0');

DROP TABLE IF EXISTS `fieldgroups`;
CREATE TABLE `fieldgroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) CHARACTER SET ascii NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=108 DEFAULT CHARSET=utf8;

INSERT INTO `fieldgroups` (`id`, `name`) VALUES('2', 'admin');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('3', 'user');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('4', 'role');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('5', 'permission');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('1', 'home');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('83', 'basic-page');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('97', 'recipes');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('98', 'recipe');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('99', 'ingredients');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('100', 'ingredient');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('101', 'repeater_ingredients');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('104', 'dishes');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('105', 'dish');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('106', 'settings');

DROP TABLE IF EXISTS `fieldgroups_fields`;
CREATE TABLE `fieldgroups_fields` (
  `fieldgroups_id` int(10) unsigned NOT NULL DEFAULT '0',
  `fields_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sort` int(11) unsigned NOT NULL DEFAULT '0',
  `data` text,
  PRIMARY KEY (`fieldgroups_id`,`fields_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('2', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '4', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '92', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('4', '5', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('5', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '97', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '98', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '3', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '98', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '98', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '98', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '107', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('101', '101', '2', '{\"columnWidth\":60}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('101', '103', '1', '{\"columnWidth\":20}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '104', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '99', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('2', '2', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '100', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('105', '106', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('101', '102', '0', '{\"columnWidth\":20}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '98', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('105', '108', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('105', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('105', '98', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '108', '2', NULL);

DROP TABLE IF EXISTS `fields`;
CREATE TABLE `fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(128) CHARACTER SET ascii NOT NULL,
  `name` varchar(250) CHARACTER SET ascii NOT NULL,
  `flags` int(11) NOT NULL DEFAULT '0',
  `label` varchar(250) NOT NULL DEFAULT '',
  `data` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `type` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=110 DEFAULT CHARSET=utf8;

INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('1', 'FieldtypePageTitle', 'title', '13', 'Title', '{\"required\":1,\"textformatters\":[\"TextformatterEntities\"],\"size\":0,\"maxlength\":255}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('2', 'FieldtypeModule', 'process', '25', 'Process', '{\"description\":\"The process that is executed on this page. Since this is mostly used by ProcessWire internally, it is recommended that you don\'t change the value of this unless adding your own pages in the admin.\",\"collapsed\":1,\"required\":1,\"moduleTypes\":[\"Process\"],\"permanent\":1}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('3', 'FieldtypePassword', 'pass', '24', 'Set Password', '{\"collapsed\":1,\"size\":50,\"maxlength\":128}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('5', 'FieldtypePage', 'permissions', '24', 'Permissions', '{\"derefAsPage\":0,\"parent_id\":31,\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldCheckboxes\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('4', 'FieldtypePage', 'roles', '24', 'Roles', '{\"derefAsPage\":0,\"parent_id\":30,\"labelFieldName\":\"name\",\"inputfield\":\"InputfieldCheckboxes\",\"description\":\"User will inherit the permissions assigned to each role. You may assign multiple roles to a user. When accessing a page, the user will only inherit permissions from the roles that are also assigned to the page\'s template.\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('92', 'FieldtypeEmail', 'email', '9', 'E-Mail Address', '{\"size\":70,\"maxlength\":255}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('97', 'FieldtypeModule', 'admin_theme', '8', 'Admin Theme', '{\"moduleTypes\":[\"AdminTheme\"],\"labelField\":\"title\",\"inputfieldClass\":\"InputfieldRadios\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('98', 'FieldtypeTextarea', 'summary', '0', 'Summary', '{\"inputfieldClass\":\"InputfieldCKEditor\",\"contentType\":1,\"htmlOptions\":[2,4,8],\"collapsed\":0,\"minlength\":0,\"maxlength\":0,\"showCount\":0,\"rows\":5,\"toolbar\":\"Format, Styles, -, Bold, Italic, -, RemoveFormat\\nNumberedList, BulletedList, -, Blockquote\\nPWLink, Unlink, Anchor\\nPWImage, Table, HorizontalRule, SpecialChar\\nPasteText, PasteFromWord\\nScayt, -, Sourcedialog\",\"inlineMode\":0,\"useACF\":1,\"usePurifier\":1,\"formatTags\":\"p;h1;h2;h3;h4;h5;h6;pre;address\",\"extraPlugins\":[\"pwimage\",\"pwlink\",\"sourcedialog\"],\"removePlugins\":\"image,magicline\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('99', 'FieldtypeTextarea', 'preparation', '0', 'Preparation', '{\"inputfieldClass\":\"InputfieldCKEditor\",\"contentType\":1,\"htmlOptions\":[2,4,8],\"collapsed\":0,\"minlength\":0,\"maxlength\":0,\"showCount\":0,\"rows\":5,\"toolbar\":\"Format, Styles, -, Bold, Italic, -, RemoveFormat\\nNumberedList, BulletedList, -, Blockquote\\nPWLink, Unlink, Anchor\\nPWImage, Table, HorizontalRule, SpecialChar\\nPasteText, PasteFromWord\\nScayt, -, Sourcedialog\",\"inlineMode\":0,\"useACF\":1,\"usePurifier\":1,\"formatTags\":\"p;h1;h2;h3;h4;h5;h6;pre;address\",\"extraPlugins\":[\"pwimage\",\"pwlink\",\"sourcedialog\"],\"removePlugins\":\"image,magicline\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('100', 'FieldtypeRepeater', 'ingredients', '0', 'Ingredients', '{\"template_id\":47,\"parent_id\":1016,\"repeaterFields\":[102,103,101],\"repeaterCollapse\":0,\"repeaterLoading\":1,\"collapsed\":0,\"repeaterTitle\":\"{amount} {unit} {ingredient}\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('101', 'FieldtypePage', 'ingredient', '0', 'Ingredient', '{\"derefAsPage\":1,\"inputfield\":\"InputfieldPageAutocomplete\",\"parent_id\":1017,\"template_id\":46,\"labelFieldName\":\"title\",\"collapsed\":0,\"operator\":\"%=\",\"searchFields\":\"title\",\"addable\":1}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('102', 'FieldtypeText', 'amount', '0', 'Amount', '{\"collapsed\":0,\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('103', 'FieldtypeOptions', 'unit', '0', 'Unit', '{\"inputfieldClass\":\"InputfieldSelect\",\"collapsed\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('104', 'FieldtypeImage', 'images', '0', 'Images', '{\"extensions\":\"gif jpg jpeg png\",\"maxFiles\":0,\"outputFormat\":0,\"defaultValuePage\":0,\"useTags\":0,\"inputfieldClass\":\"InputfieldImage\",\"descriptionRows\":1,\"gridMode\":\"grid\",\"focusMode\":\"on\",\"resizeServer\":0,\"clientQuality\":90,\"maxReject\":0,\"dimensionsByAspectRatio\":0,\"fileSchema\":6,\"collapsed\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('106', 'FieldtypePage', 'recipes', '0', 'Recipes', '{\"derefAsPage\":0,\"inputfield\":\"InputfieldPageAutocomplete\",\"parent_id\":1018,\"template_id\":44,\"labelFieldName\":\"title\",\"collapsed\":0,\"operator\":\"%=\",\"searchFields\":\"title\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('107', 'FieldtypePage', 'navMain', '0', 'Navigation items (main)', '{\"derefAsPage\":0,\"inputfield\":\"InputfieldAsmSelect\",\"parent_id\":0,\"findPagesSelector\":\"parent=\\/, sort=title\",\"labelFieldName\":\"title\",\"collapsed\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('108', 'FieldtypeTextarea', 'body', '0', 'Body', '{\"inputfieldClass\":\"InputfieldCKEditor\",\"contentType\":1,\"htmlOptions\":[2,4,8],\"collapsed\":0,\"minlength\":0,\"maxlength\":0,\"showCount\":2,\"rows\":15,\"toolbar\":\"Format, Styles, -, Bold, Italic, -, RemoveFormat\\nNumberedList, BulletedList, -, Blockquote\\nPWLink, Unlink, Anchor\\nPWImage, Table, HorizontalRule, SpecialChar\\nPasteText, PasteFromWord\\nScayt, -, Sourcedialog\",\"inlineMode\":0,\"useACF\":1,\"usePurifier\":1,\"formatTags\":\"p;h1;h2;h3;h4;h5;h6;pre;address\",\"extraPlugins\":[\"pwimage\",\"pwlink\",\"sourcedialog\"],\"removePlugins\":\"image,magicline\"}');

DROP TABLE IF EXISTS `fieldtype_options`;
CREATE TABLE `fieldtype_options` (
  `fields_id` int(10) unsigned NOT NULL,
  `option_id` int(10) unsigned NOT NULL,
  `title` text,
  `value` varchar(250) DEFAULT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`fields_id`,`option_id`),
  UNIQUE KEY `title` (`title`(250),`fields_id`),
  KEY `value` (`value`,`fields_id`),
  KEY `sort` (`sort`,`fields_id`),
  FULLTEXT KEY `title_value` (`title`,`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`) VALUES('103', '1', 'grams', '', '0');
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`) VALUES('103', '2', 'cups', '', '1');
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`) VALUES('103', '3', 'liter', '', '2');
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`) VALUES('103', '4', 'hint/pinch', '', '3');
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`) VALUES('103', '5', 'pieces', '', '4');
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`) VALUES('103', '6', 'teaspoon', '', '5');
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`) VALUES('103', '7', 'tablespoon', '', '6');

DROP TABLE IF EXISTS `modules`;
CREATE TABLE `modules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `class` varchar(128) CHARACTER SET ascii NOT NULL,
  `flags` int(11) NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `class` (`class`)
) ENGINE=MyISAM AUTO_INCREMENT=168 DEFAULT CHARSET=utf8;

INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('1', 'FieldtypeTextarea', '0', '', '2019-03-01 23:28:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('2', 'FieldtypeNumber', '0', '', '2019-03-01 23:28:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('3', 'FieldtypeText', '0', '', '2019-03-01 23:28:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('4', 'FieldtypePage', '0', '', '2019-03-01 23:28:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('30', 'InputfieldForm', '0', '', '2019-03-01 23:28:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('6', 'FieldtypeFile', '0', '', '2019-03-01 23:28:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('7', 'ProcessPageEdit', '1', '', '2019-03-01 23:28:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('10', 'ProcessLogin', '0', '', '2019-03-01 23:28:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('12', 'ProcessPageList', '0', '{\"pageLabelField\":\"title\",\"paginationLimit\":25,\"limit\":50}', '2019-03-01 23:28:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('121', 'ProcessPageEditLink', '1', '', '2019-03-01 23:28:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('14', 'ProcessPageSort', '0', '', '2019-03-01 23:28:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('15', 'InputfieldPageListSelect', '0', '', '2019-03-01 23:28:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('117', 'JqueryUI', '1', '', '2019-03-01 23:28:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('17', 'ProcessPageAdd', '0', '', '2019-03-01 23:28:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('125', 'SessionLoginThrottle', '11', '', '2019-03-01 23:28:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('122', 'InputfieldPassword', '0', '', '2019-03-01 23:28:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('25', 'InputfieldAsmSelect', '0', '', '2019-03-01 23:28:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('116', 'JqueryCore', '1', '', '2019-03-01 23:28:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('27', 'FieldtypeModule', '0', '', '2019-03-01 23:28:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('28', 'FieldtypeDatetime', '0', '', '2019-03-01 23:28:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('29', 'FieldtypeEmail', '0', '', '2019-03-01 23:28:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('108', 'InputfieldURL', '0', '', '2019-03-01 23:28:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('32', 'InputfieldSubmit', '0', '', '2019-03-01 23:28:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('33', 'InputfieldWrapper', '0', '', '2019-03-01 23:28:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('34', 'InputfieldText', '0', '', '2019-03-01 23:28:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('35', 'InputfieldTextarea', '0', '', '2019-03-01 23:28:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('36', 'InputfieldSelect', '0', '', '2019-03-01 23:28:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('37', 'InputfieldCheckbox', '0', '', '2019-03-01 23:28:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('38', 'InputfieldCheckboxes', '0', '', '2019-03-01 23:28:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('39', 'InputfieldRadios', '0', '', '2019-03-01 23:28:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('40', 'InputfieldHidden', '0', '', '2019-03-01 23:28:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('41', 'InputfieldName', '0', '', '2019-03-01 23:28:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('43', 'InputfieldSelectMultiple', '0', '', '2019-03-01 23:28:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('45', 'JqueryWireTabs', '0', '', '2019-03-01 23:28:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('46', 'ProcessPage', '0', '', '2019-03-01 23:28:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('47', 'ProcessTemplate', '0', '', '2019-03-01 23:28:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('48', 'ProcessField', '32', '', '2019-03-01 23:28:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('50', 'ProcessModule', '0', '', '2019-03-01 23:28:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('114', 'PagePermissions', '3', '', '2019-03-01 23:28:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('97', 'FieldtypeCheckbox', '1', '', '2019-03-01 23:28:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('115', 'PageRender', '3', '{\"clearCache\":1}', '2019-03-01 23:28:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('55', 'InputfieldFile', '0', '', '2019-03-01 23:28:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('56', 'InputfieldImage', '0', '', '2019-03-01 23:28:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('57', 'FieldtypeImage', '0', '', '2019-03-01 23:28:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('60', 'InputfieldPage', '0', '{\"inputfieldClasses\":[\"InputfieldSelect\",\"InputfieldSelectMultiple\",\"InputfieldCheckboxes\",\"InputfieldRadios\",\"InputfieldAsmSelect\",\"InputfieldPageListSelect\",\"InputfieldPageListSelectMultiple\",\"InputfieldPageAutocomplete\"]}', '2019-03-01 23:28:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('61', 'TextformatterEntities', '0', '', '2019-03-01 23:28:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('66', 'ProcessUser', '0', '{\"showFields\":[\"name\",\"email\",\"roles\"]}', '2019-03-01 23:28:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('67', 'MarkupAdminDataTable', '0', '', '2019-03-01 23:28:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('68', 'ProcessRole', '0', '{\"showFields\":[\"name\"]}', '2019-03-01 23:28:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('76', 'ProcessList', '0', '', '2019-03-01 23:28:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('78', 'InputfieldFieldset', '0', '', '2019-03-01 23:28:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('79', 'InputfieldMarkup', '0', '', '2019-03-01 23:28:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('80', 'InputfieldEmail', '0', '', '2019-03-01 23:28:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('89', 'FieldtypeFloat', '1', '', '2019-03-01 23:28:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('83', 'ProcessPageView', '0', '', '2019-03-01 23:28:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('84', 'FieldtypeInteger', '0', '', '2019-03-01 23:28:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('85', 'InputfieldInteger', '0', '', '2019-03-01 23:28:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('86', 'InputfieldPageName', '0', '', '2019-03-01 23:28:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('87', 'ProcessHome', '0', '', '2019-03-01 23:28:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('90', 'InputfieldFloat', '0', '', '2019-03-01 23:28:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('94', 'InputfieldDatetime', '0', '', '2019-03-01 23:28:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('98', 'MarkupPagerNav', '0', '', '2019-03-01 23:28:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('129', 'ProcessPageEditImageSelect', '1', '', '2019-03-01 23:28:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('103', 'JqueryTableSorter', '1', '', '2019-03-01 23:28:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('104', 'ProcessPageSearch', '1', '{\"searchFields\":\"title\",\"displayField\":\"title path\"}', '2019-03-01 23:28:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('105', 'FieldtypeFieldsetOpen', '1', '', '2019-03-01 23:28:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('106', 'FieldtypeFieldsetClose', '1', '', '2019-03-01 23:28:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('107', 'FieldtypeFieldsetTabOpen', '1', '', '2019-03-01 23:28:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('109', 'ProcessPageTrash', '1', '', '2019-03-01 23:28:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('111', 'FieldtypePageTitle', '1', '', '2019-03-01 23:28:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('112', 'InputfieldPageTitle', '0', '', '2019-03-01 23:28:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('113', 'MarkupPageArray', '3', '', '2019-03-01 23:28:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('131', 'InputfieldButton', '0', '', '2019-03-01 23:28:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('133', 'FieldtypePassword', '1', '', '2019-03-01 23:28:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('134', 'ProcessPageType', '33', '{\"showFields\":[]}', '2019-03-01 23:28:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('135', 'FieldtypeURL', '1', '', '2019-03-01 23:28:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('136', 'ProcessPermission', '1', '{\"showFields\":[\"name\",\"title\"]}', '2019-03-01 23:28:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('137', 'InputfieldPageListSelectMultiple', '0', '', '2019-03-01 23:28:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('138', 'ProcessProfile', '1', '{\"profileFields\":[\"pass\",\"email\",\"admin_theme\"]}', '2019-03-01 23:28:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('139', 'SystemUpdater', '1', '{\"systemVersion\":16,\"coreVersion\":\"3.0.123\"}', '2019-03-01 23:28:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('148', 'AdminThemeDefault', '10', '{\"colors\":\"classic\"}', '2019-03-01 23:28:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('149', 'InputfieldSelector', '42', '', '2019-03-01 23:28:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('150', 'ProcessPageLister', '32', '', '2019-03-01 23:28:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('151', 'JqueryMagnific', '1', '', '2019-03-01 23:28:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('155', 'InputfieldCKEditor', '0', '', '2019-03-01 23:28:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('156', 'MarkupHTMLPurifier', '0', '', '2019-03-01 23:28:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('159', 'ProcessRecentPages', '1', '', '2019-03-01 23:28:26');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('160', 'AdminThemeUikit', '10', '', '2019-03-01 23:28:26');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('161', 'ProcessLogger', '1', '', '2019-03-01 23:28:44');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('162', 'InputfieldIcon', '0', '', '2019-03-01 23:28:44');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('163', 'FieldtypeRepeater', '35', '{\"repeatersRootPageID\":1015,\"uninstall\":\"\",\"submit_save_module\":\"Submit\"}', '2019-03-01 23:29:36');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('164', 'InputfieldRepeater', '0', '', '2019-03-01 23:29:36');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('165', 'FieldtypeOptions', '1', '', '2019-03-01 23:29:44');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('166', 'InputfieldPageAutocomplete', '0', '', '2019-03-01 23:30:00');

DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) unsigned NOT NULL DEFAULT '0',
  `templates_id` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(128) CHARACTER SET ascii NOT NULL,
  `status` int(10) unsigned NOT NULL DEFAULT '1',
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_users_id` int(10) unsigned NOT NULL DEFAULT '2',
  `created` timestamp NOT NULL DEFAULT '2015-12-18 06:09:00',
  `created_users_id` int(10) unsigned NOT NULL DEFAULT '2',
  `published` datetime DEFAULT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_parent_id` (`name`,`parent_id`),
  KEY `parent_id` (`parent_id`),
  KEY `templates_id` (`templates_id`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  KEY `status` (`status`),
  KEY `published` (`published`)
) ENGINE=MyISAM AUTO_INCREMENT=1116 DEFAULT CHARSET=utf8;

INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1', '0', '1', 'home', '9', '2019-04-23 19:24:45', '41', '2019-03-01 23:28:10', '2', '2019-03-01 23:28:10', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('2', '1', '2', 'processwire', '1035', '2019-03-01 23:28:27', '40', '2019-03-01 23:28:10', '2', '2019-03-01 23:28:10', '8');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('3', '2', '2', 'page', '21', '2019-03-01 23:28:10', '41', '2019-03-01 23:28:10', '2', '2019-03-01 23:28:10', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('6', '3', '2', 'add', '21', '2019-03-01 23:28:47', '40', '2019-03-01 23:28:10', '2', '2019-03-01 23:28:10', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('7', '1', '2', 'trash', '1039', '2019-03-01 23:28:10', '41', '2019-03-01 23:28:10', '2', '2019-03-01 23:28:10', '9');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('8', '3', '2', 'list', '21', '2019-03-01 23:28:50', '41', '2019-03-01 23:28:10', '2', '2019-03-01 23:28:10', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('9', '3', '2', 'sort', '1047', '2019-03-01 23:28:10', '41', '2019-03-01 23:28:10', '2', '2019-03-01 23:28:10', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('10', '3', '2', 'edit', '1045', '2019-03-01 23:28:49', '41', '2019-03-01 23:28:10', '2', '2019-03-01 23:28:10', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('11', '22', '2', 'template', '21', '2019-03-01 23:28:10', '41', '2019-03-01 23:28:10', '2', '2019-03-01 23:28:10', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('16', '22', '2', 'field', '21', '2019-03-01 23:28:10', '41', '2019-03-01 23:28:10', '2', '2019-03-01 23:28:10', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('21', '2', '2', 'module', '21', '2019-03-01 23:28:10', '41', '2019-03-01 23:28:10', '2', '2019-03-01 23:28:10', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('22', '2', '2', 'setup', '21', '2019-03-01 23:28:10', '41', '2019-03-01 23:28:10', '2', '2019-03-01 23:28:10', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('23', '2', '2', 'login', '1035', '2019-03-01 23:28:10', '41', '2019-03-01 23:28:10', '2', '2019-03-01 23:28:10', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('27', '1', '29', 'http404', '1035', '2019-03-01 23:28:10', '41', '2019-03-01 23:28:10', '3', '2019-03-01 23:28:10', '7');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('28', '2', '2', 'access', '13', '2019-03-01 23:28:10', '41', '2019-03-01 23:28:10', '2', '2019-03-01 23:28:10', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('29', '28', '2', 'users', '29', '2019-03-01 23:28:10', '41', '2019-03-01 23:28:10', '2', '2019-03-01 23:28:10', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('30', '28', '2', 'roles', '29', '2019-03-01 23:28:10', '41', '2019-03-01 23:28:10', '2', '2019-03-01 23:28:10', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('31', '28', '2', 'permissions', '29', '2019-03-01 23:28:10', '41', '2019-03-01 23:28:10', '2', '2019-03-01 23:28:10', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('32', '31', '5', 'page-edit', '25', '2019-03-01 23:28:10', '41', '2019-03-01 23:28:10', '2', '2019-03-01 23:28:10', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('34', '31', '5', 'page-delete', '25', '2019-03-01 23:28:10', '41', '2019-03-01 23:28:10', '2', '2019-03-01 23:28:10', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('35', '31', '5', 'page-move', '25', '2019-03-01 23:28:10', '41', '2019-03-01 23:28:10', '2', '2019-03-01 23:28:10', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('36', '31', '5', 'page-view', '25', '2019-03-01 23:28:10', '41', '2019-03-01 23:28:10', '2', '2019-03-01 23:28:10', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('37', '30', '4', 'guest', '25', '2019-03-01 23:28:10', '41', '2019-03-01 23:28:10', '2', '2019-03-01 23:28:10', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('38', '30', '4', 'superuser', '25', '2019-03-01 23:28:10', '41', '2019-03-01 23:28:10', '2', '2019-03-01 23:28:10', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('41', '29', '3', 'admin', '1', '2019-03-01 23:28:27', '40', '2019-03-01 23:28:10', '2', '2019-03-01 23:28:10', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('40', '29', '3', 'guest', '25', '2019-03-01 23:28:10', '41', '2019-03-01 23:28:10', '2', '2019-03-01 23:28:10', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('50', '31', '5', 'page-sort', '25', '2019-03-01 23:28:10', '41', '2019-03-01 23:28:10', '41', '2019-03-01 23:28:10', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('51', '31', '5', 'page-template', '25', '2019-03-01 23:28:10', '41', '2019-03-01 23:28:10', '41', '2019-03-01 23:28:10', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('52', '31', '5', 'user-admin', '25', '2019-03-01 23:28:10', '41', '2019-03-01 23:28:10', '41', '2019-03-01 23:28:10', '10');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('53', '31', '5', 'profile-edit', '1', '2019-03-01 23:28:10', '41', '2019-03-01 23:28:10', '41', '2019-03-01 23:28:10', '13');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('54', '31', '5', 'page-lock', '1', '2019-03-01 23:28:10', '41', '2019-03-01 23:28:10', '41', '2019-03-01 23:28:10', '8');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('300', '3', '2', 'search', '1045', '2019-03-01 23:28:10', '41', '2019-03-01 23:28:10', '2', '2019-03-01 23:28:10', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('301', '3', '2', 'trash', '1047', '2019-03-01 23:28:10', '41', '2019-03-01 23:28:10', '2', '2019-03-01 23:28:10', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('302', '3', '2', 'link', '1041', '2019-03-01 23:28:10', '41', '2019-03-01 23:28:10', '2', '2019-03-01 23:28:10', '7');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('303', '3', '2', 'image', '1041', '2019-03-01 23:28:10', '41', '2019-03-01 23:28:10', '2', '2019-03-01 23:28:10', '8');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('304', '2', '2', 'profile', '1025', '2019-03-01 23:28:10', '41', '2019-03-01 23:28:10', '41', '2019-03-01 23:28:10', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1006', '31', '5', 'page-lister', '1', '2019-03-01 23:28:10', '40', '2019-03-01 23:28:10', '40', '2019-03-01 23:28:10', '9');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1007', '3', '2', 'lister', '1', '2019-03-01 23:28:10', '40', '2019-03-01 23:28:10', '40', '2019-03-01 23:28:10', '9');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1010', '3', '2', 'recent-pages', '1', '2019-03-01 23:28:26', '40', '2019-03-01 23:28:26', '40', '2019-03-01 23:28:26', '10');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1011', '31', '5', 'page-edit-recent', '1', '2019-03-01 23:28:26', '40', '2019-03-01 23:28:26', '40', '2019-03-01 23:28:26', '10');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1012', '22', '2', 'logs', '1', '2019-03-01 23:28:44', '40', '2019-03-01 23:28:44', '40', '2019-03-01 23:28:44', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1013', '31', '5', 'logs-view', '1', '2019-03-01 23:28:44', '40', '2019-03-01 23:28:44', '40', '2019-03-01 23:28:44', '11');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1014', '31', '5', 'logs-edit', '1', '2019-03-01 23:28:44', '40', '2019-03-01 23:28:44', '40', '2019-03-01 23:28:44', '12');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1015', '2', '2', 'repeaters', '1036', '2019-03-01 23:29:36', '41', '2019-03-01 23:29:36', '41', '2019-03-01 23:29:36', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1016', '1015', '2', 'for-field-100', '17', '2019-03-01 23:31:27', '41', '2019-03-01 23:31:27', '41', '2019-03-01 23:31:27', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1017', '1', '45', 'ingredients', '1', '2019-04-23 19:14:29', '41', '2019-03-01 23:31:41', '41', '2019-03-01 23:31:41', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1018', '1', '43', 'recipes', '1', '2019-04-23 19:08:57', '41', '2019-03-01 23:35:50', '41', '2019-03-01 23:35:50', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1085', '1036', '47', '1556040768-6584-1', '1', '2019-04-23 19:33:03', '41', '2019-04-23 19:32:48', '41', '2019-04-23 19:33:03', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1083', '1017', '46', 'bearnaise', '1', '2019-04-23 19:32:38', '41', '2019-04-23 19:32:38', '41', '2019-04-23 19:32:38', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1084', '1036', '47', '1556040767-0247-1', '1', '2019-04-23 19:33:03', '41', '2019-04-23 19:32:47', '41', '2019-04-23 19:33:03', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1067', '1018', '44', 'marinara-sauce', '1', '2019-04-23 19:31:06', '41', '2019-04-23 19:29:59', '41', '2019-04-23 19:30:17', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1068', '1016', '2', 'for-page-1067', '17', '2019-04-23 19:29:59', '41', '2019-04-23 19:29:59', '41', '2019-04-23 19:29:59', '9');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1069', '1068', '47', '1556040643-7823-1', '1', '2019-04-23 19:31:06', '41', '2019-04-23 19:30:43', '41', '2019-04-23 19:31:06', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1033', '1', '50', 'dishes', '1', '2019-04-23 19:14:01', '41', '2019-04-23 15:22:37', '41', '2019-04-23 15:22:39', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1035', '1018', '44', 'sauce-hollandaise', '1', '2019-04-23 19:33:03', '41', '2019-04-23 15:26:00', '41', '2019-04-23 15:26:18', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1036', '1016', '2', 'for-page-1035', '17', '2019-04-23 15:26:00', '41', '2019-04-23 15:26:00', '41', '2019-04-23 15:26:00', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1037', '1018', '44', 'sauce-bernaise', '1', '2019-04-23 19:32:38', '41', '2019-04-23 15:26:13', '41', '2019-04-23 15:26:15', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1038', '1016', '2', 'for-page-1037', '17', '2019-04-23 15:26:13', '41', '2019-04-23 15:26:13', '41', '2019-04-23 15:26:13', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1039', '1018', '44', 'pizza-dough', '1', '2019-04-23 19:31:31', '41', '2019-04-23 15:27:04', '41', '2019-04-23 15:27:07', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1040', '1016', '2', 'for-page-1039', '17', '2019-04-23 15:27:04', '41', '2019-04-23 15:27:04', '41', '2019-04-23 15:27:04', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1041', '1018', '44', 'puff-pastry', '1', '2019-04-23 19:31:54', '41', '2019-04-23 15:27:53', '41', '2019-04-23 15:27:56', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1042', '1016', '2', 'for-page-1041', '17', '2019-04-23 15:27:53', '41', '2019-04-23 15:27:53', '41', '2019-04-23 15:27:53', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1043', '1018', '44', 'sour-dough', '1', '2019-04-23 19:33:28', '41', '2019-04-23 15:28:05', '41', '2019-04-23 15:28:07', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1044', '1016', '2', 'for-page-1043', '17', '2019-04-23 15:28:05', '41', '2019-04-23 15:28:05', '41', '2019-04-23 15:28:05', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1070', '1068', '47', '1556040655-9595-1', '1', '2019-04-23 19:31:06', '41', '2019-04-23 19:30:55', '41', '2019-04-23 19:31:06', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1072', '1017', '46', 'marinara', '1', '2019-04-23 19:31:06', '41', '2019-04-23 19:31:06', '41', '2019-04-23 19:31:06', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1073', '1040', '47', '1556040671-9032-1', '1', '2019-04-23 19:31:31', '41', '2019-04-23 19:31:11', '41', '2019-04-23 19:31:31', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1074', '1040', '47', '1556040673-1799-1', '1', '2019-04-23 19:31:31', '41', '2019-04-23 19:31:13', '41', '2019-04-23 19:31:31', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1075', '1017', '46', 'pizza', '1', '2019-04-23 19:31:31', '41', '2019-04-23 19:31:31', '41', '2019-04-23 19:31:31', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1076', '1017', '46', 'dough', '1', '2019-04-23 19:31:31', '41', '2019-04-23 19:31:31', '41', '2019-04-23 19:31:31', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1077', '1042', '47', '1556040697-0615-1', '1', '2019-04-23 19:31:54', '41', '2019-04-23 19:31:37', '41', '2019-04-23 19:31:54', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1078', '1042', '47', '1556040698-0331-1', '1', '2019-04-23 19:31:54', '41', '2019-04-23 19:31:38', '41', '2019-04-23 19:31:54', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1079', '1017', '46', 'puff', '1', '2019-04-23 19:31:54', '41', '2019-04-23 19:31:54', '41', '2019-04-23 19:31:54', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1080', '1017', '46', 'pastry', '1', '2019-04-23 19:31:54', '41', '2019-04-23 19:31:54', '41', '2019-04-23 19:31:54', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1081', '1038', '47', '1556040719-7289-1', '1', '2019-04-23 19:32:38', '41', '2019-04-23 19:31:59', '41', '2019-04-23 19:32:38', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1082', '1038', '47', '1556040722-5774-1', '1', '2019-04-23 19:32:38', '41', '2019-04-23 19:32:02', '41', '2019-04-23 19:32:38', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1071', '1017', '46', 'sauce', '1', '2019-04-23 19:31:05', '41', '2019-04-23 19:31:05', '41', '2019-04-23 19:31:05', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1066', '1', '52', 'settings', '1', '2019-04-23 15:54:05', '41', '2019-04-23 15:52:41', '41', '2019-04-23 15:52:43', '7');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1086', '1017', '46', 'hollandaise', '1', '2019-04-23 19:33:03', '41', '2019-04-23 19:33:03', '41', '2019-04-23 19:33:03', '7');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1087', '1044', '47', '1556040788-7425-1', '1', '2019-04-23 19:33:28', '41', '2019-04-23 19:33:08', '41', '2019-04-23 19:33:28', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1088', '1044', '47', '1556040789-7213-1', '1', '2019-04-23 19:33:28', '41', '2019-04-23 19:33:09', '41', '2019-04-23 19:33:28', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1089', '1017', '46', 'sour', '1', '2019-04-23 19:33:28', '41', '2019-04-23 19:33:28', '41', '2019-04-23 19:33:28', '8');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1090', '1018', '44', 'spaghetti', '1', '2019-04-23 19:45:17', '41', '2019-04-23 19:44:48', '41', '2019-04-23 19:45:17', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1091', '1016', '2', 'for-page-1090', '17', '2019-04-23 19:44:48', '41', '2019-04-23 19:44:48', '41', '2019-04-23 19:44:48', '10');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1092', '1091', '47', '1556041508-7568-1', '1', '2019-04-23 19:45:17', '41', '2019-04-23 19:45:08', '41', '2019-04-23 19:45:17', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1093', '1017', '46', 'spaghetti', '1', '2019-04-23 19:45:17', '41', '2019-04-23 19:45:17', '41', '2019-04-23 19:45:17', '9');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1094', '1033', '51', 'spaghetti-marinara', '1', '2019-04-23 19:45:45', '41', '2019-04-23 19:45:34', '41', '2019-04-23 19:45:45', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1095', '1018', '44', 'tuna', '1', '2019-04-23 19:47:21', '41', '2019-04-23 19:47:01', '41', '2019-04-23 19:47:09', '7');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1096', '1016', '2', 'for-page-1095', '17', '2019-04-23 19:47:01', '41', '2019-04-23 19:47:01', '41', '2019-04-23 19:47:01', '11');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1097', '1018', '44', 'meatballs', '1', '2019-04-23 19:58:29', '41', '2019-04-23 19:47:26', '41', '2019-04-23 19:47:48', '8');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1098', '1016', '2', 'for-page-1097', '17', '2019-04-23 19:47:26', '41', '2019-04-23 19:47:26', '41', '2019-04-23 19:47:26', '12');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1099', '1098', '47', '1556041656-4483-1', '1', '2019-04-23 19:58:29', '41', '2019-04-23 19:47:36', '41', '2019-04-23 19:47:48', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1100', '1017', '46', 'ground-beef', '1', '2019-04-23 19:47:48', '41', '2019-04-23 19:47:48', '41', '2019-04-23 19:47:48', '10');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1101', '1033', '51', 'spaghetti-meatballs', '1', '2019-04-23 19:55:38', '41', '2019-04-23 19:48:04', '41', '2019-04-23 19:48:15', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1102', '1033', '51', 'tuna-pizza', '1', '2019-04-23 19:48:39', '41', '2019-04-23 19:48:30', '41', '2019-04-23 19:48:39', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1103', '1098', '47', '1556042249-9413-1', '1', '2019-04-23 19:58:29', '41', '2019-04-23 19:57:29', '41', '2019-04-23 19:58:29', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1104', '1098', '47', '1556042261-1647-1', '1', '2019-04-23 19:58:29', '41', '2019-04-23 19:57:41', '41', '2019-04-23 19:58:29', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1105', '1098', '47', '1556042262-5231-1', '1', '2019-04-23 19:58:29', '41', '2019-04-23 19:57:42', '41', '2019-04-23 19:58:29', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1106', '1098', '47', '1556042263-4745-1', '1', '2019-04-23 19:58:29', '41', '2019-04-23 19:57:43', '41', '2019-04-23 19:58:29', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1107', '1017', '46', 'garlic', '1', '2019-04-23 19:58:29', '41', '2019-04-23 19:58:29', '41', '2019-04-23 19:58:29', '11');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1108', '1017', '46', 'salt', '1', '2019-04-23 19:58:29', '41', '2019-04-23 19:58:29', '41', '2019-04-23 19:58:29', '12');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1109', '1017', '46', 'pepper', '1', '2019-04-23 19:58:29', '41', '2019-04-23 19:58:29', '41', '2019-04-23 19:58:29', '13');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1110', '1017', '46', 'taco-seasoning', '1', '2019-04-23 19:58:29', '41', '2019-04-23 19:58:29', '41', '2019-04-23 19:58:29', '14');

DROP TABLE IF EXISTS `pages_access`;
CREATE TABLE `pages_access` (
  `pages_id` int(11) NOT NULL,
  `templates_id` int(11) NOT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pages_id`),
  KEY `templates_id` (`templates_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('37', '2', '2019-03-01 23:28:10');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('38', '2', '2019-03-01 23:28:10');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('32', '2', '2019-03-01 23:28:10');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('34', '2', '2019-03-01 23:28:10');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('35', '2', '2019-03-01 23:28:10');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('36', '2', '2019-03-01 23:28:10');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('50', '2', '2019-03-01 23:28:10');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('51', '2', '2019-03-01 23:28:10');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('52', '2', '2019-03-01 23:28:10');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('53', '2', '2019-03-01 23:28:10');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('54', '2', '2019-03-01 23:28:10');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1006', '2', '2019-03-01 23:28:10');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1011', '2', '2019-03-01 23:28:26');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1013', '2', '2019-03-01 23:28:44');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1014', '2', '2019-03-01 23:28:44');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1017', '1', '2019-03-01 23:31:41');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1018', '1', '2019-03-01 23:35:50');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1093', '1', '2019-04-23 19:45:17');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1092', '2', '2019-04-23 19:45:08');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1090', '1', '2019-04-23 19:44:48');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1089', '1', '2019-04-23 19:33:28');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1088', '2', '2019-04-23 19:33:09');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1081', '2', '2019-04-23 19:31:59');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1080', '1', '2019-04-23 19:31:54');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1079', '1', '2019-04-23 19:31:54');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1078', '2', '2019-04-23 19:31:38');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1077', '2', '2019-04-23 19:31:37');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1033', '1', '2019-04-23 15:22:37');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1035', '1', '2019-04-23 15:26:00');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1037', '1', '2019-04-23 15:26:13');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1039', '1', '2019-04-23 15:27:04');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1041', '1', '2019-04-23 15:27:53');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1043', '1', '2019-04-23 15:28:05');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1067', '1', '2019-04-23 19:29:59');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1087', '2', '2019-04-23 19:33:08');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1076', '1', '2019-04-23 19:31:31');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1086', '1', '2019-04-23 19:33:03');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1085', '2', '2019-04-23 19:32:48');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1084', '2', '2019-04-23 19:32:47');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1083', '1', '2019-04-23 19:32:38');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1082', '2', '2019-04-23 19:32:02');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1075', '1', '2019-04-23 19:31:31');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1074', '2', '2019-04-23 19:31:13');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1073', '2', '2019-04-23 19:31:11');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1072', '1', '2019-04-23 19:31:06');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1071', '1', '2019-04-23 19:31:05');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1070', '2', '2019-04-23 19:30:55');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1069', '2', '2019-04-23 19:30:43');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1066', '1', '2019-04-23 15:52:41');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1094', '1', '2019-04-23 19:45:34');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1095', '1', '2019-04-23 19:47:01');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1097', '1', '2019-04-23 19:47:26');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1099', '2', '2019-04-23 19:47:36');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1100', '1', '2019-04-23 19:47:48');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1101', '1', '2019-04-23 19:48:04');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1102', '1', '2019-04-23 19:48:30');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1103', '2', '2019-04-23 19:57:29');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1104', '2', '2019-04-23 19:57:41');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1105', '2', '2019-04-23 19:57:42');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1106', '2', '2019-04-23 19:57:43');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1107', '1', '2019-04-23 19:58:29');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1108', '1', '2019-04-23 19:58:29');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1109', '1', '2019-04-23 19:58:29');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1110', '1', '2019-04-23 19:58:29');

DROP TABLE IF EXISTS `pages_parents`;
CREATE TABLE `pages_parents` (
  `pages_id` int(10) unsigned NOT NULL,
  `parents_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`parents_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('2', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('3', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('3', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('22', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('22', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('28', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('28', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('29', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('29', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('29', '28');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('30', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('30', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('30', '28');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('31', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('31', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('31', '28');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1015', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1016', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1016', '1015');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1036', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1036', '1015');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1036', '1016');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1038', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1038', '1015');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1038', '1016');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1040', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1040', '1015');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1040', '1016');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1042', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1042', '1015');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1042', '1016');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1044', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1044', '1015');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1044', '1016');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1068', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1068', '1015');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1068', '1016');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1091', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1091', '1015');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1091', '1016');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1098', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1098', '1015');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1098', '1016');

DROP TABLE IF EXISTS `pages_sortfields`;
CREATE TABLE `pages_sortfields` (
  `pages_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sortfield` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`pages_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `pages_sortfields` (`pages_id`, `sortfield`) VALUES('1017', '1');
INSERT INTO `pages_sortfields` (`pages_id`, `sortfield`) VALUES('1018', '1');

DROP TABLE IF EXISTS `session_login_throttle`;
CREATE TABLE `session_login_throttle` (
  `name` varchar(128) NOT NULL,
  `attempts` int(10) unsigned NOT NULL DEFAULT '0',
  `last_attempt` int(10) unsigned NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `templates`;
CREATE TABLE `templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) CHARACTER SET ascii NOT NULL,
  `fieldgroups_id` int(10) unsigned NOT NULL DEFAULT '0',
  `flags` int(11) NOT NULL DEFAULT '0',
  `cache_time` mediumint(9) NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `fieldgroups_id` (`fieldgroups_id`)
) ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;

INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('2', 'admin', '2', '8', '0', '{\"useRoles\":1,\"parentTemplates\":[2],\"allowPageNum\":1,\"redirectLogin\":23,\"slashUrls\":1,\"noGlobal\":1,\"compile\":3,\"modified\":1551478887,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('3', 'user', '3', '8', '0', '{\"useRoles\":1,\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"pageClass\":\"User\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('4', 'role', '4', '8', '0', '{\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"pageClass\":\"Role\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('5', 'permission', '5', '8', '0', '{\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"guestSearchable\":1,\"pageClass\":\"Permission\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('1', 'home', '1', '0', '0', '{\"useRoles\":1,\"noParents\":1,\"slashUrls\":1,\"compile\":3,\"label\":\"Home\",\"modified\":1556035561,\"ns\":\"\\\\\",\"roles\":[37]}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('29', 'basic-page', '83', '0', '0', '{\"slashUrls\":1,\"compile\":3,\"label\":\"Basic page\",\"modified\":1556027505,\"ns\":\"\\\\\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('43', 'recipes', '97', '0', '0', '{\"noParents\":-1,\"childTemplates\":[44],\"slashUrls\":1,\"compile\":3,\"label\":\"Recipes\",\"modified\":1556039594,\"ns\":\"\\\\\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('44', 'recipe', '98', '0', '0', '{\"noChildren\":1,\"parentTemplates\":[43],\"slashUrls\":1,\"compile\":3,\"label\":\"Recipe\",\"modified\":1556042623,\"ns\":\"\\\\\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('45', 'ingredients', '99', '0', '0', '{\"noParents\":-1,\"childTemplates\":[46],\"slashUrls\":1,\"compile\":3,\"label\":\"Ingredients\",\"modified\":1556039623,\"ns\":\"\\\\\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('46', 'ingredient', '100', '0', '0', '{\"noChildren\":1,\"parentTemplates\":[45],\"slashUrls\":1,\"compile\":3,\"label\":\"Ingredient\",\"modified\":1556031920,\"ns\":\"\\\\\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('47', 'repeater_ingredients', '101', '8', '0', '{\"noChildren\":1,\"noParents\":1,\"slashUrls\":1,\"pageClass\":\"RepeaterPage\",\"noGlobal\":1,\"compile\":3,\"modified\":1551479487}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('50', 'dishes', '104', '0', '0', '{\"noParents\":-1,\"childTemplates\":[51],\"slashUrls\":1,\"compile\":3,\"label\":\"Dishes\",\"modified\":1556039718,\"ns\":\"\\\\\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('51', 'dish', '105', '0', '0', '{\"noChildren\":1,\"parentTemplates\":[50],\"slashUrls\":1,\"compile\":3,\"label\":\"Dish\",\"modified\":1556042603,\"ns\":\"\\\\\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('52', 'settings', '106', '0', '0', '{\"noChildren\":1,\"noParents\":-1,\"slashUrls\":1,\"compile\":3,\"label\":\"Settings\",\"modified\":1556027546}');

UPDATE pages SET created_users_id=41, modified_users_id=41, created=NOW(), modified=NOW();

# --- /WireDatabaseBackup {"numTables":23,"numCreateTables":29,"numInserts":592,"numSeconds":0}