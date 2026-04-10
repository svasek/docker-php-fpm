ARG PHP_VERSION=8.5.5
ARG ALPINE_VERSION

FROM php:${PHP_VERSION}-fpm-alpine
ARG PHP_VERSION
ARG ALPINE_VERSION
LABEL maintainer="Milos Svasek <Milos@Svasek.net>" \
      alpine.version="${ALPINE_VERSION}" \
      php.version="${PHP_VERSION}"

RUN <<EOF
set -e

# Build dependencies
apk add --no-cache tzdata libintl libcurl libzip freetype libpng libjpeg-turbo unzip \
    linux-headers curl-dev freetype-dev libpng-dev libjpeg-turbo-dev zlib-dev libzip-dev gettext-dev

# PHP extensions
docker-php-ext-configure gd --with-freetype --with-jpeg
docker-php-ext-install -j$(nproc) gd curl mysqli pdo pdo_mysql gettext exif sockets zip

# opcache (built-in since PHP 8.5)
if [ "$(printf '%s\n' "${PHP_VERSION}" "8.5.0" | sort -V | head -n1)" != "8.5.0" ]; then
    docker-php-ext-install -j$(nproc) opcache
fi

# Cleanup
apk del linux-headers curl-dev freetype-dev libpng-dev libjpeg-turbo-dev zlib-dev libzip-dev gettext-dev
docker-php-source delete
rm -rf /var/cache/apk/*
EOF
