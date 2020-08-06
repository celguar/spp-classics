DROP TABLE IF EXISTS `ai_playerbot_rarity_cache`;
CREATE TABLE `ai_playerbot_rarity_cache` (
  `id` bigint auto_increment,
  `item` mediumint(8) NOT NULL,
  `rarity` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='PlayerbotAI Rarity Cache';

INSERT INTO `ai_playerbot_rarity_cache` (`id`, `item`, `rarity`) VALUES
	(1, 1, 1);
