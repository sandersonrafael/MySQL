# Código gerado pelo MySQL Workbench

*** Nesse caso, as duas chaves devem ser selecionadas como PK (Primary Key);
  Depois disto, precisam ser referenciadas no campo Foreign Keys (FK) de acordo com suas tabelas
    (users e roles), mas o nome das Foreign Keys não precisam ser informados, eles são automáticos,
    basta referenciar corretamente;
  Por último, ao configurar as foreign keys, necessário utilizar ON UPDATE e ON DELETE como CASCADE
    para as duas FK's, para que suas deleções e atts reflitam nos donos das FK's, garantindo integridade

CREATE TABLE `curso_mysql`.`users_roles` (
  `user_id` INT UNSIGNED NOT NULL,
  `role_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`user_id`, `role_id`),
  INDEX `fk_users_roles_2_idx` (`role_id` ASC) VISIBLE,
  CONSTRAINT `fk_users_roles_1`
    FOREIGN KEY (`user_id`)
    REFERENCES `curso_mysql`.`users` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_users_roles_2`
    FOREIGN KEY (`role_id`)
    REFERENCES `curso_mysql`.`roles` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

# Item users_roles adicionado via SQL

INSERT INTO `curso_mysql`.`users_roles` (`user_id`, `role_id`) VALUES ('1', '1');

*** Como essa entidade está como CASCADE, se for apagado um usuário que ela contém a FK, as linhas que 
  contenham o ID desse usuário apagado também serão apagadas, garantindo integridade
