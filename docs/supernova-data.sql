INSERT INTO `sn_users` SET 
  `id` = 1, 
  `username` = 'admin', 
  `password` = MD5('admin'),
  `email` = 'root@localhost',
  `email_2` = 'root@localhost', 
  `lang` = 'ru', 
  `authlevel` = 3, 
  `sex` = '0', 
  `id_planet` = 1, 
  `galaxy` = 1,
  `system` = 1,
  `planet` = 1,
  `current_planet` = 1,
  `register_time` = UNIX_TIMESTAMP();


INSERT INTO `sn_planets` SET
  `id` = 1,
  `name` = 'Planet',
  `id_owner` = '1',
  `id_level` = '3',
  `galaxy` = 1,
  `system` = 1,
  `planet` = 1,
  `last_update` = UNIX_TIMESTAMP(),
  `planet_type` = 1,
  `image` = 'normaltempplanet01',
  `diameter` = 12750,
  `field_max` = 163,
  `temp_min` = -40,
  `temp_max` = 60,
  `metal` = 500,
  `metal_perhour` = 40,
  `metal_max` = 500000,
  `crystal` = 500,
  `crystal_perhour` = 20,
  `crystal_max` = 500000,
  `deuterium` = 0,
  `deuterium_perhour` = 0,
  `deuterium_max` = 500000;


INSERT INTO `sn_config` VALUES
  ('BuildLabWhileRun', 0), 
  ('chat_admin_msgFormat', '[c=purple]$2[/c]'), 
  ('chat_timeout', 900), 
  ('COOKIE_NAME', 'SuperNova'), 
  ('crystal_basic_income', 20), 
  ('debug', 0), 
  ('Defs_Cdr', 30), 
  ('deuterium_basic_income', 0), 
  ('eco_stockman_fleet', ''), 
  ('energy_basic_income', 0), 
  ('Fleet_Cdr', 30), 
  ('fleet_speed', 1), 
  ('forum_url', '/forum/'), 
  ('game_adminEmail', 'root@localhost'), 
  ('game_date_withTime', 'd.m.Y h:i:s'), 
  ('game_default_language', 'ru'), 
  ('game_default_skin', 'skins/EpicBlue/'), 
  ('game_default_template', 'OpenGame'), 
  ('game_disable', 0), 
  ('game_disable_reason', 'SuperNova is in maintenance mode! Please return later!'), 
  ('game_maxGalaxy', '5'), 
  ('game_maxPlanet', '15'), 
  ('game_maxSystem', '199'), 
  ('game_mode', '0'), 
  ('game_name', 'SuperNova'), 
  ('game_news_actual', 259200), 
  ('game_news_overview', 3), 
  ('game_speed', 1), 
  ('game_user_changename', 0), 
  ('initial_fields', 163), 
  ('int_banner_background', 'images/banner.png'), 
  ('int_banner_fontInfo', 'terminator.ttf'), 
  ('int_banner_fontRaids', 'klmnfp2005.ttf'), 
  ('int_banner_fontUniverse', 'cristal.ttf'), 
  ('int_banner_showInOverview', 1), 
  ('int_banner_URL', '/banner.php?type=banner'), 
  ('int_userbar_background', 'images/userbar.png'), 
  ('int_userbar_font', 'arialbd.ttf'), 
  ('int_userbar_showInOverview', 1), 
  ('int_userbar_URL', '/banner.php?type=userbar'), 
  ('LastSettedGalaxyPos', 1), 
  ('LastSettedPlanetPos', 1), 
  ('LastSettedSystemPos', 1), 
  ('metal_basic_income', 40), 
  ('noobprotection', 1), 
  ('noobprotectionmulti', 5), 
  ('noobprotectiontime', 5000), 
  ('player_max_colonies', 9), 
  ('resource_multiplier', 1), 
  ('rpg_bonus_divisor', 10), 
  ('rpg_cost_banker', 1), 
  ('rpg_cost_exchange', 1), 
  ('rpg_cost_pawnshop', 1), 
  ('rpg_cost_scraper', 1), 
  ('rpg_cost_stockman', 1), 
  ('rpg_cost_trader', 1), 
  ('rpg_exchange_crystal', 2), 
  ('rpg_exchange_darkMatter', 100000), 
  ('rpg_exchange_deuterium', 4), 
  ('rpg_exchange_metal', 1), 
  ('rpg_officer', 3), 
  ('rpg_scrape_crystal', 0.50), 
  ('rpg_scrape_deuterium', 0.25), 
  ('rpg_scrape_metal', 0.75), 
  ('rules_url', '/rules.php'), 
  ('stats_lastUpdated', '0'), 
  ('stats_schedule', 'd@04:00:00'),
  ('urlaubs_modus_erz', 0), 
  ('users_amount', 0);