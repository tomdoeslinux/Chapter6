CREATE TABLE IF NOT EXISTS `pixapencil`.`user` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `username` VARCHAR(45),
    `password` TEXT NOT NULL,
    `algorithm` VARCHAR(45) NOT NULL
);

CREATE TABLE IF NOT EXISTS `pixapencil`.`authority` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(45) NOT NULL
);

CREATE TABLE IF NOT EXISTS `pixapencil`.`user_authority` (
    `user_id` INT NOT NULL,
    `authority_id` INT NOT NULL,
    PRIMARY KEY (`user_id`, `authority_id`),
    FOREIGN KEY (`user_id`) REFERENCES `pixapencil`.`user` (`id`),
    FOREIGN KEY (`authority_id`) REFERENCES `pixapencil`.`authority` (`id`)
);

CREATE TABLE IF NOT EXISTS `pixapencil`.`product` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(45) NOT NULL,
    `price` VARCHAR(45) NOT NULL,
    `currency` VARCHAR(45) NOT NULL
);