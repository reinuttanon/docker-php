FROM php:7.4-apache
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y mariadb-client
RUN docker-php-ext-install mysqli pdo pdo_mysql \
    && docker-php-ext-enable pdo_mysql

RUN a2enmod rewrite
