# Código gerado pelo MySQL Workbench Ao criar tabela users

CREATE TABLE `curso_mysql`.`users` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(150) NOT NULL,
  `last_name` VARCHAR(150) NULL,
  `email` VARCHAR(255) NOT NULL,
  `password_hash` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE
);

# Usuário adicionado via SQL

INSERT INTO `curso_mysql`.`users` (`first_name`, `last_name`, `email`, `password_hash`) VALUES ('Rafael', 'Ferreira', 'sandersonrafael@email.com', 'asdkpm12312asd');
