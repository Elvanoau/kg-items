CREATE TABLE IF NOT EXISTS `elvano_items` (
    `name` VARCHAR(50),
    `itemdata` TEXT NULL DEFAULT NULL COLLATE 'utf8_general_ci',
    `itemtype` TEXT NULL DEFAULT NULL COLLATE 'utf8_general_ci'
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
;