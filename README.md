# PHP-FPM Docker Image

[![Docker Image CI](https://github.com/svasek/docker-php-fpm/actions/workflows/docker-image.yml/badge.svg)](https://github.com/svasek/docker-php-fpm/actions/workflows/docker-image.yml)
[![Docker Stars](https://img.shields.io/docker/stars/svasek/php-fpm.svg)](https://hub.docker.com/r/svasek/php-fpm)
[![Docker Pulls](https://img.shields.io/docker/pulls/svasek/php-fpm.svg)](https://hub.docker.com/r/svasek/php-fpm)
[![](https://images.microbadger.com/badges/image/svasek/php-fpm.svg)](https://microbadger.com/images/svasek/php-fpm)
[![](https://images.microbadger.com/badges/version/svasek/php-fpm.svg)](https://microbadger.com/images/svasek/php-fpm)

A lightweight **PHP-FPM** Docker image based on the official `php:fpm-alpine` image.

---

## Features

- 🕑 **Timezone support**  
  Simply set the timezone by defining the `TZ` environment variable, e.g.:

  ```bash
  TZ=Europe/Prague
  ```

- 📦 **Pre-installed PHP extensions**  
  Commonly needed extensions are already installed:
  - `curl`
  - `gd`
  - `mysqli`
  - `opcache`
  - `pdo`, `pdo_mysql`
  - `gettext`
  - `exif`
  - `sockets`
  - `zip`

---

## ⚠️ Version Notice

- The `latest` and `8` tags now point to **PHP 8.4**.
- The `latest` tag was moved from **7.4** to **8.2**, since PHP 7.4 has reached end of life.
- If you still need PHP **7.4**, please use the `7` or `7.4` tag explicitly.

---

## Usage Example

```bash
docker run -e TZ=Europe/Prague svasek/php-fpm:latest
```

---

## Links

- 📄 [Docker Hub](https://hub.docker.com/r/svasek/php-fpm)
- 🐙 [GitHub Repository](https://github.com/svasek/docker-php-fpm)

---

## ✅ Tip

Keep your `docker-compose.yml` or CI/CD pipeline up to date with the desired PHP version tag to avoid unexpected upgrades.
