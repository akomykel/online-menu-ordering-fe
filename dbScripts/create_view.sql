DROP VIEW IF EXISTS `vw_orders`;
CREATE VIEW `vw_orders` AS
	SELECT
		`o`.`id` `id`,
		`m`.`name` `item`,
		`o`.`qty` `qty`,
		`o`.`price` `price`
	FROM
		`ORDERS` `o`
	INNER JOIN `menu` `m` on `o`.`item` = `m`.`id`