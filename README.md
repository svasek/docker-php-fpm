# PHP-fpm 
[![Docker Image CI](https://github.com/svasek/docker-php-fpm/actions/workflows/docker-image.yml/badge.svg)](https://github.com/svasek/docker-php-fpm/actions/workflows/docker-image.yml)
[![Docker Stars](https://img.shields.io/docker/stars/svasek/php-fpm.svg)](https://hub.docker.com/r/svasek/php-fpm)
[![Docker Pulls](https://img.shields.io/docker/pulls/svasek/php-fpm.svg)](https://hub.docker.com/r/svasek/php-fpm)
[![](https://images.microbadger.com/badges/image/svasek/php-fpm.svg)](https://microbadger.com/images/svasek/php-fpm "Get your own image badge on microbadger.com")
[![](https://images.microbadger.com/badges/version/svasek/php-fpm.svg)](https://microbadger.com/images/svasek/php-fpm "Get your own version badge on microbadger.com")

Docker image based on official "fpm-alpine" PHP image.

## Added image functions ##
* support for timezones: To set timezone just set environment variable like "TZ=Europe/Prague"


## WARNING: 
* The tag `latest` and `8` has been moved to the PHP `8.3`.
* The tag `latest` has been moved from branch `7.4` to `8.2` as PHP 7.4 reached end of life. 
* If you want to continue using PHP in version 7.4 please use tag `7` or `7.4` instead.


## Added PHP Extensions ##
* curl 
* gd
* mysqli 
* opcache 
* pdo, pdo_mysql 
* gettext
* exif
* sockets
* zip
