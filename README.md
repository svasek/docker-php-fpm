# PHP-fpm 
[![Docker Stars](https://img.shields.io/docker/stars/svasek/php-fpm.svg)](https://hub.docker.com/r/svasek/php-fpm)
[![Docker Pulls](https://img.shields.io/docker/pulls/svasek/php-fpm.svg)](https://hub.docker.com/r/svasek/php-fpm)
[![](https://images.microbadger.com/badges/image/svasek/php-fpm.svg)](https://microbadger.com/images/svasek/php-fpm "Get your own image badge on microbadger.com")
[![](https://images.microbadger.com/badges/version/svasek/php-fpm.svg)](https://microbadger.com/images/svasek/php-fpm "Get your own version badge on microbadger.com")

Docker image based on official "7.X-fpm-alpine"

## Added image functions ##
* support for timezones: To set timezone just set environment variable like "TZ=Europe/Prague"


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
