-- --------------------------------------------------------
-- Хост:                         127.0.0.1
-- Версия сервера:               5.7.26 - MySQL Community Server (GPL)
-- Операционная система:         Win32
-- HeidiSQL Версия:              10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Дамп структуры для таблица realmd.realmlist
DROP TABLE IF EXISTS `realmlist`;
CREATE TABLE IF NOT EXISTS `realmlist` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'The realm ID.',
  `name` varchar(32) NOT NULL DEFAULT '' COMMENT 'The name of the realm.',
  `address` varchar(32) NOT NULL DEFAULT '127.0.0.1' COMMENT 'The public IP address of the world server.',
  `localAddress` varchar(255) NOT NULL DEFAULT '127.0.0.1' COMMENT 'The local IP address of the world server.',
  `localSubnetMask` varchar(255) NOT NULL DEFAULT '255.255.255.0' COMMENT 'The subnet mask used for the local network. ',
  `port` int(11) NOT NULL DEFAULT '8085' COMMENT 'The port that the world server is running on.',
  `icon` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'The icon of the realm.',
  `realmflags` tinyint(3) unsigned NOT NULL DEFAULT '2' COMMENT 'Supported masks for the realm.',
  `timezone` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'The realm timezone.',
  `allowedSecurityLevel` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Minimum account (see account.gmlevel) required for accounts to log in.',
  `population` float unsigned NOT NULL DEFAULT '0' COMMENT 'Show the current population.',
  `realmbuilds` varchar(64) NOT NULL DEFAULT '' COMMENT 'The accepted client builds that the realm will accept.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Realm System';

-- Дамп данных таблицы realmd.realmlist: 3 rows
/*!40000 ALTER TABLE `realmlist` DISABLE KEYS */;
INSERT INTO `realmlist` (`id`, `name`, `address`, `localAddress`, `localSubnetMask`, `port`, `icon`, `realmflags`, `timezone`, `allowedSecurityLevel`, `population`, `realmbuilds`) VALUES
	(1, 'Vanilla Realm', '127.0.0.1', '127.0.0.1', '255.255.255.0', 8085, 1, 0, 1, 0, 0, '5875 6005 6141 '),
	(2, 'The Burning Crusade Realm', '127.0.0.1', '127.0.0.1', '255.255.255.0', 8086, 0, 2, 0, 0, 0, '8606'),
	(3, 'Wrath of the Lich King Realm', '127.0.0.1', '127.0.0.1', '255.255.255.0', 8087, 0, 2, 0, 0, 0, '12340');
/*!40000 ALTER TABLE `realmlist` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
