# Instalação do MySQL no Docker

* Executar comando no terminal para baixar a imagem do mysql no docker:


docker pull mysql


* Para iniciar o MySQL no docker, precisamos executar o comando docker run (modificadores) mysql


* Modificadores:

** -p -> porta do docker que se liga a outra porta do computador. Padrão: 3306:3306
** --name -> nome do banco de dados. Definido pelo usuário
** -e -> variáveis de ambiente. MYSQL_ROOT_PASSWORD=valorDesejadoParaASenha
** -d -> detached: os logs do docker rodam em segundo plano, não interrompendo o uso do terminal


* Ex:

docker run -p 3306:3306 --name db_teste -e MYSQL_ROOT_PASSWORD=senha123 -d mysql


** Importante **

* Depois de feita essa configuração, não é necessário repetir. Basta usar os comandos:
  docker stop db_teste para parar e docker start db_teste para executar novamente

* Para listar o histórico, usamos: docker ps -l