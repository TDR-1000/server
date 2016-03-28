ALTER TABLE games ADD COLUMN staff_pick timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' AFTER prompt;
CREATE TABLE `game_follows` ( `game_id` int(32) unsigned NOT NULL DEFAULT '0', `user_id` int(32) unsigned NOT NULL DEFAULT '0', `created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00', `last_active` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP, PRIMARY KEY (`user_id`,`game_id`), KEY `game_follow_game_id` (`game_id`) );
