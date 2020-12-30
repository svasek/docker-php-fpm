FROM php:7.2-fpm-alpine

LABEL maintainer="Milos Svasek <Milos@Svasek.net>"

RUN apk add --no-cache --update libcurl freetype libpng libjpeg-turbo curl-dev freetype-dev libpng-dev libjpeg-turbo-dev && \
    docker-php-ext-configure gd \
        --with-gd \
        --with-freetype-dir=/usr/include/ \
        --with-png-dir=/usr/include/ \
        --with-jpeg-dir=/usr/include/ && \
    docker-php-ext-install -j$(nproc) gd && \
    docker-php-ext-install curl mysqli opcache pdo pdo_mysql && \
    docker-php-ext-enable curl mysqli opcache pdo pdo_mysql gd && \
    apk del curl-dev libjpeg-turbo freetype-dev libpng-dev libjpeg-turbo-dev && \
    docker-php-source delete && \
    rm -rf /var/cache/apk/*
