FROM php:8.2-fpm-alpine
ADD https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions /usr/local/bin/
RUN chmod +x /usr/local/bin/install-php-extensions && apk add git && apk add supervisor && install-php-extensions pdo memcache pdo_pgsql pdo_mysql intl @composer gd imagick redis mongodb
# CMD ["/usr/bin/supervisord" "-c" "/etc/supervisor/conf.d/queue.conf"]