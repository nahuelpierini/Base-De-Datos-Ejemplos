CREATE TABLE `payment_type`
(
 `id`   int NOT NULL AUTO_INCREMENT ,
 `name` varchar(45) NOT NULL ,

PRIMARY KEY (`id`)
);

CREATE TABLE `address`
(
 `id`                int NOT NULL AUTO_INCREMENT ,
 `street`            varchar(45) NOT NULL ,
 `number`            varchar(45) NOT NULL ,
 `city`              varchar(45) NOT NULL ,
 `country`           varchar(45) NOT NULL ,
 `postal code`       varchar(10) NOT NULL ,
 `extra_information` varchar(45) NULL ,

PRIMARY KEY (`id`)
);

CREATE TABLE `customer`
(
 `id`         int NOT NULL AUTO_INCREMENT ,
 `first_name` varchar(45) NOT NULL ,
 `last_name`  varchar(45) NOT NULL ,
 `phone`      varchar(15) NOT NULL ,
 `email`      varchar(45) NOT NULL ,
 `password`   varchar(20) NOT NULL ,
 `dni`        varchar(15) NOT NULL ,
 `birthdate`  date NOT NULL ,
 `is_activ`   boolean NOT NULL ,
 `id_address` int NOT NULL ,

PRIMARY KEY (`id`),
UNIQUE KEY `Index_3` (`dni`),
KEY `FK_1` (`id_address`),
CONSTRAINT `FK_66` FOREIGN KEY `FK_1` (`id_address`) REFERENCES `address` (`id`)
);

CREATE TABLE `payment`
(
 `id`              int NOT NULL AUTO_INCREMENT ,
 `pay_date`        datetime NOT NULL ,
 `pay_discount`    int NOT NULL ,
 `pay_amount`      int NOT NULL ,
 `id_customer`     int NOT NULL ,
 `id_payment_type` int NOT NULL ,

PRIMARY KEY (`id`),
KEY `FK_1` (`id_customer`),
CONSTRAINT `FK_78` FOREIGN KEY `FK_1` (`id_customer`) REFERENCES `customer` (`id`),
KEY `FK_2` (`id_payment_type`),
CONSTRAINT `FK_79` FOREIGN KEY `FK_2` (`id_payment_type`) REFERENCES `payment_type` (`id`)
);


CREATE TABLE `gym`
(
 `id`         int NOT NULL AUTO_INCREMENT ,
 `name`        NOT NULL ,
 `id_address` int NOT NULL ,

PRIMARY KEY (`id`),
KEY `FK_1` (`id_address`),
CONSTRAINT `FK_81` FOREIGN KEY `FK_1` (`id_address`) REFERENCES `address` (`id`)
);

CREATE TABLE `administrative`
(
 `id`         int NOT NULL AUTO_INCREMENT ,
 `first_name` varchar(45) NOT NULL ,
 `last_name`  varchar(45) NOT NULL ,
 `phone`      varchar(15) NOT NULL ,
 `email`      varchar(45) NOT NULL ,
 `dni`        varchar(15) NOT NULL ,
 `password`   varchar(20) NOT NULL ,
 `birthdate`  date NOT NULL ,
 `is_active`  boolean NOT NULL ,
 `id_address` int NOT NULL ,
 `id_gym`     int NOT NULL ,

PRIMARY KEY (`id`),
UNIQUE KEY `Index_3` (`dni`),
KEY `FK_1` (`id_address`),
CONSTRAINT `FK_83` FOREIGN KEY `FK_1` (`id_address`) REFERENCES `address` (`id`),
KEY `FK_2` (`id_gym`),
CONSTRAINT `FK_84` FOREIGN KEY `FK_2` (`id_gym`) REFERENCES `gym` (`id`)
);

CREATE TABLE `traineer`
(
 `id`         int NOT NULL AUTO_INCREMENT ,
 `first_name` varchar(45) NOT NULL ,
 `last_name`  varchar(45) NOT NULL ,
 `phone`      varchar(15) NOT NULL ,
 `email`      varchar(45) NOT NULL ,
 `password`   varchar(20) NOT NULL ,
 `dni`        varchar(15) NOT NULL ,
 `birthdate`  date NOT NULL ,
 `id_address` int NOT NULL ,

PRIMARY KEY (`id`),
UNIQUE KEY `Index_3` (`dni`),
KEY `FK_1` (`id_address`),
CONSTRAINT `FK_86_1` FOREIGN KEY `FK_1` (`id_address`) REFERENCES `address` (`id`)
);

CREATE TABLE `gym_traineer`
(
 `id`          int NOT NULL ,
 `id_gym`      int NOT NULL ,
 `id_traineer` int NOT NULL ,
 `is_active`   boolean NOT NULL ,

PRIMARY KEY (`id`),
KEY `FK_2` (`id_gym`),
CONSTRAINT `FK_86` FOREIGN KEY `FK_2` (`id_gym`) REFERENCES `gym` (`id`),
KEY `FK_2_1` (`id_traineer`),
CONSTRAINT `FK_85` FOREIGN KEY `FK_2_1` (`id_traineer`) REFERENCES `traineer` (`id`)
);

CREATE TABLE `role`
(
 `id`          int NOT NULL AUTO_INCREMENT ,
 `name`        varchar(45) NOT NULL ,
 `description` varchar(45) NOT NULL ,

PRIMARY KEY (`id`)
);

CREATE TABLE `traineer_role`
(
 `id`          int NOT NULL AUTO_INCREMENT ,
 `id_rol`      int NOT NULL ,
 `id_traineer` int NOT NULL ,

PRIMARY KEY (`id`),
KEY `FK_1` (`id_rol`),
CONSTRAINT `FK_79_1` FOREIGN KEY `FK_1` (`id_rol`) REFERENCES `role` (`id`),
KEY `FK_2` (`id_traineer`),
CONSTRAINT `FK_80` FOREIGN KEY `FK_2` (`id_traineer`) REFERENCES `traineer` (`id`)
);

CREATE TABLE `activitie`
(
 `id`          int NOT NULL AUTO_INCREMENT ,
 `name`        varchar(45) NOT NULL ,
 `description` varchar(45) NOT NULL ,

PRIMARY KEY (`id`)
);

CREATE TABLE `suscription_type`
(
 `id`          int NOT NULL AUTO_INCREMENT ,
 `name`        varchar(45) NOT NULL ,
 `description` varchar(45) NOT NULL ,
 `id_activity` int NOT NULL ,

PRIMARY KEY (`id`),
KEY `FK_1` (`id_activity`),
CONSTRAINT `FK_77` FOREIGN KEY `FK_1` (`id_activity`) REFERENCES `activitie` (`id`)
);


CREATE TABLE `suscription`
(
 `id`                  int NOT NULL AUTO_INCREMENT ,
 `start_suscription`   date NOT NULL ,
 `end_suscription`     date NOT NULL ,
 `id_customer`         int NOT NULL ,
 `id_suscription_type` int NOT NULL ,
 `id_gym`              int NOT NULL ,

PRIMARY KEY (`id`),
KEY `FK_1` (`id_customer`),
CONSTRAINT `FK_75` FOREIGN KEY `FK_1` (`id_customer`) REFERENCES `customer` (`id`),
KEY `FK_2` (`id_suscription_type`),
CONSTRAINT `FK_76` FOREIGN KEY `FK_2` (`id_suscription_type`) REFERENCES `suscription_type` (`id`),
KEY `FK_3` (`id_gym`),
CONSTRAINT `FK_82` FOREIGN KEY `FK_3` (`id_gym`) REFERENCES `gym` (`id`)
);

CREATE TABLE `day`
(
 `int` int NOT NULL AUTO_INCREMENT ,
 `day` varchar(10) NOT NULL ,

PRIMARY KEY (`int`)
);

CREATE TABLE `time`
(
 `id`         int NOT NULL AUTO_INCREMENT ,
 `start_time` time NOT NULL ,
 `end_time`   time NOT NULL ,

PRIMARY KEY (`id`)
);

CREATE TABLE `schedule`
(
 `id`      int NOT NULL AUTO_INCREMENT ,
 `id_time` int NOT NULL ,
 `int`     int NOT NULL ,

PRIMARY KEY (`id`),
KEY `FK_1` (`id_time`),
CONSTRAINT `FK_68` FOREIGN KEY `FK_1` (`id_time`) REFERENCES `time` (`id`),
KEY `FK_2` (`int`),
CONSTRAINT `FK_69` FOREIGN KEY `FK_2` (`int`) REFERENCES `day` (`int`)
);

CREATE TABLE `schedule`
(
 `id`      int NOT NULL AUTO_INCREMENT ,
 `id_time` int NOT NULL ,
 `int`     int NOT NULL ,

PRIMARY KEY (`id`),
KEY `FK_1` (`id_time`),
CONSTRAINT `FK_68` FOREIGN KEY `FK_1` (`id_time`) REFERENCES `time` (`id`),
KEY `FK_2` (`int`),
CONSTRAINT `FK_69` FOREIGN KEY `FK_2` (`int`) REFERENCES `day` (`int`)
);

CREATE TABLE `traineer_activity_schedule`
(
 `id`                   int NOT NULL AUTO_INCREMENT ,
 `id_trainner`          int NOT NULL ,
 `id_activity_schedule` int NOT NULL ,

PRIMARY KEY (`id`),
KEY `FK_1` (`id_trainner`),
CONSTRAINT `FK_73` FOREIGN KEY `FK_1` (`id_trainner`) REFERENCES `traineer` (`id`),
KEY `FK_2` (`id_activity_schedule`),
CONSTRAINT `FK_74` FOREIGN KEY `FK_2` (`id_activity_schedule`) REFERENCES `activity_schedule` (`id`)
);


