# Código gerado pelo MySQL Workbench ao criar tabela roles

CREATE TABLE `curso_mysql`.`roles` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `name_UNIQUE` (`name` ASC) VISIBLE
);

# Função (role) adicionada via SQL

INSERT INTO `curso_mysql`.`roles` (`name`) VALUES ('admin');
