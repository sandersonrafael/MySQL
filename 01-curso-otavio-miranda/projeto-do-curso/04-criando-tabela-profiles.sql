# Código gerado pelo MySQL Workbench

CREATE TABLE `curso_mysql`.`profile` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `bio` TEXT(1024) NULL,
  `description` TEXT(1024) NULL,
  `user_id` INT UNSIGNED NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `user_id_UNIQUE` (`user_id` ASC) VISIBLE,
  CONSTRAINT `fk_profile_1`
    FOREIGN KEY (`user_id`)
    REFERENCES `curso_mysql`.`users` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

# Items profile adicionado via SQL (Um com user_id e outro sem)

INSERT INTO `curso_mysql`.`profile` (`bio`, `description`, `user_id`) VALUES ('Essa é minha bio', 'Essa é minha descrição', '1');
INSERT INTO `curso_mysql`.`profile` (`bio`, `description`) VALUES ('Essa é uma bio qualquer', 'Essa é uma descrição qualquer');
