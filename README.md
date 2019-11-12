# Jaguaribe Food

## Projeto RAILS API com VueJS

## Comandos para criar a imagem no Docker
``` 
$ sudo docker-compose build
$ sudo docker-compose up
$ sudo docker-compose run api rake db:create
$ sudo docker-compose run api bundle exec rails db:migrate
$ sudo docker-compose run api bundle exec rails db:seed

$ docker-compose run web rake db:create
$ docker-compose run web rails db:migrate
$ docker-compose run web rails db:seed
```
