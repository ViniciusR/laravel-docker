#!/bin/bash

docker-compose up -d
docker-compose exec app cp .env.example .env
docker-compose exec app composer install
docker-compose exec app php artisan key:generate
#docker-compose exec app php artisan migrate:install
docker-compose exec app php artisan config:clear