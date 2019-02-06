-- DROP DATABASE IF EXISTS `db_online_ordering_app`;
-- CREATE database `db_online_ordering_app`;
-- use `db_online_ordering_app`;

/* =================================================== */
DROP TABLE IF EXISTS `menu_categories`;
CREATE TABLE `menu_categories`
(
    id int(11) NOT NULL AUTO_INCREMENT,
    name varchar(200),
    code varchar(200),
    datecreated date,
    createdby int(11),
    datealtered date,
    alteredby int(11),
    remarks varchar(255),
    isdeleted int(1),
    PRIMARY KEY (`id`),
    UNIQUE KEY `id` (`id`)
);

INSERT INTO `menu_categories`(name, code, datecreated, createdby, datealtered, alteredby, remarks, isdeleted)
VALUES('Burgers', 'burgers', '2019-02-04', 0, null, 0, 'Menu category created', 0);

INSERT INTO `menu_categories`(name, code, datecreated, createdby, datealtered, alteredby, remarks, isdeleted)
VALUES('Beverages', 'beverages', '2019-02-04', 0, null, 0, 'Menu category created', 0);

INSERT INTO `menu_categories`(name, code, datecreated, createdby, datealtered, alteredby, remarks, isdeleted)
VALUES('Combo Meals', 'comboMeals', '2019-02-04', 0, null, 0, 'Menu category created', 0);


/* =================================================== */
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu`
(
    id int(11) NOT NULL AUTO_INCREMENT,
    category int(11),
    name varchar(200),
    tax int(11),
    price int(11),
    datecreated date,
    createdby int(11),
    datealtered date,
    alteredby int(11),
    remarks varchar(255),
    isdeleted int(1),
    PRIMARY KEY (`id`),
    UNIQUE KEY `id` (`id`)
);

INSERT INTO `menu`(category, name, tax, price, datecreated, createdby, datealtered, alteredby, remarks, isdeleted)
VALUES(1, 'Hotdog', 5, 85, '2019-02-04', 0, null, 0, 'New menu added', 0);

INSERT INTO `menu`(category, name, tax, price, datecreated, createdby, datealtered, alteredby, remarks, isdeleted)
VALUES(1, 'Cheese Burger', 8, 79, '2019-02-04', 0, null, 0, 'Menu category created', 0);

INSERT INTO `menu`(category, name, tax, price, datecreated, createdby, datealtered, alteredby, remarks, isdeleted)
VALUES(1, 'Fries', 2, 45, '2019-02-04', 0, null, 0, 'Menu category created', 0);

INSERT INTO `menu`(category, name, tax, price, datecreated, createdby, datealtered, alteredby, remarks, isdeleted)
VALUES(2, 'Coke', 2, 30, '2019-02-04', 0, null, 0, 'New menu added', 0);

INSERT INTO `menu`(category, name, tax, price, datecreated, createdby, datealtered, alteredby, remarks, isdeleted)
VALUES(2, 'Sprite', 2, 30, '2019-02-04', 0, null, 0, 'Menu category created', 0);

INSERT INTO `menu`(category, name, tax, price, datecreated, createdby, datealtered, alteredby, remarks, isdeleted)
VALUES(2, 'Tea', 1, 20, '2019-02-04', 0, null, 0, 'Menu category created', 0);

INSERT INTO `menu`(category, name, tax, price, datecreated, createdby, datealtered, alteredby, remarks, isdeleted)
VALUES(3, 'Chicken Combo Meal', 10, 125, '2019-02-04', 0, null, 0, 'New menu added', 0);

INSERT INTO `menu`(category, name, tax, price, datecreated, createdby, datealtered, alteredby, remarks, isdeleted)
VALUES(3, 'Pork Combo', 10, 150, '2019-02-04', 0, null, 0, 'Menu category created', 0);

INSERT INTO `menu`(category, name, tax, price, datecreated, createdby, datealtered, alteredby, remarks, isdeleted)
VALUES(3, 'Fish Combo', 8, 90, '2019-02-04', 0, null, 0, 'Menu category created', 0);


/* =================================================== */
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`
(
    id int(11) NOT NULL AUTO_INCREMENT,
    item int(11),
    qty int(11),
    price int(11),
    datecreated date,
    createdby int(11),
    datealtered date,
    alteredby int(11),
    remarks varchar(255),
    isdeleted int(1),
    PRIMARY KEY (`id`),
    UNIQUE KEY `id` (`id`)
);

/* =================================================== */
DROP TABLE IF EXISTS `purchased_orders`;
CREATE TABLE `purchased_orders`
(
    id int(11) NOT NULL AUTO_INCREMENT,
    item int(11),
    qty int(11),
    price int(11),
    datecreated date,
    createdby int(11),
    datealtered date,
    alteredby int(11),
    remarks varchar(255),
    isdeleted int(1),
    PRIMARY KEY (`id`),
    UNIQUE KEY `id` (`id`)
);