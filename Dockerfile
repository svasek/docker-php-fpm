FROM php:7.2-fpm-alpine

LABEL maintainer="Milos Svasek <Milos@Svasek.net>"

RUN docker-php-ext-install mysqli opcache pdo pdo_mysql
    && docker-php-ext-enable mysqli opcache pdo pdo_mysql
