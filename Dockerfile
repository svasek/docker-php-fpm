FROM php:7.2-fpm-alpine

LABEL maintainer="Milos Svasek <Milos@Svasek.net>"

RUN apk add --no-cache --update tzdata libintl libcurl freetype libpng libjpeg-turbo memcached unzip curl-dev freetype-dev libpng-dev libjpeg-turbo-dev zlib-dev gettext-dev && \
    docker-php-ext-configure gd \
        --with-gd \
        --with-freetype-dir=/usr/include/ \
        --with-png-dir=/usr/include/ \
        --with-jpeg-dir=/usr/include/ && \
    docker-php-ext-install -j$(nproc) gd && \
    docker-php-ext-install -j$(nproc) curl mysqli opcache pdo pdo_mysql gettext exif sockets zip  && \
    docker-php-ext-enable curl mysqli opcache pdo pdo_mysql gettext exif sockets zip gd && \
    apk del curl-dev freetype-dev libpng-dev libjpeg-turbo-dev zlib-dev gettext-dev && \
    docker-php-source delete && \
    rm -rf /var/cache/apk/*
