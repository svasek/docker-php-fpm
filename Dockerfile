ARG PHP_VERSION=8.4.10

FROM php:${PHP_VERSION}-fpm-alpine
LABEL maintainer="Milos Svasek <Milos@Svasek.net>" \
      alpine.version="${ALPINE_VERSION}" \
      php.version="${PHP_VERSION}"

RUN apk add --no-cache --update tzdata libintl libcurl libzip freetype libpng libjpeg-turbo memcached unzip \
      linux-headers curl-dev freetype-dev libpng-dev libjpeg-turbo-dev zlib-dev libzip-dev gettext-dev && \
      docker-php-ext-configure gd --with-freetype --with-jpeg && \
      docker-php-ext-install -j$(nproc) gd && \
      docker-php-ext-install -j$(nproc) curl mysqli opcache pdo pdo_mysql gettext exif sockets zip  && \
      docker-php-ext-enable curl mysqli opcache pdo pdo_mysql gettext exif sockets zip gd && \
      apk del linux-headers curl-dev freetype-dev libpng-dev libjpeg-turbo-dev zlib-dev libzip-dev gettext-dev && \
      docker-php-source delete && \
      rm -rf /var/cache/apk/*
