FROM php:5.6-apache

RUN apt-get update
RUN apt-get install -y libfreetype6-dev libjpeg62-turbo-dev libpng12-dev libmcrypt-dev
RUN docker-php-ext-install pdo_mysql mysqli mbstring gd iconv mcrypt
