ARG PHP_LOCAL_VERSION

FROM php:${PHP_LOCAL_VERSION}-fpm-alpine

# Install modules
RUN apk add --no-cache \
    autoconf \
    freetype-dev \
    libjpeg-turbo-dev \
    libmcrypt-dev \
    libpng-dev \
    libxml2-dev \
    libzip-dev \
    && docker-php-ext-install zip bcmath pdo_mysql mysqli mbstring opcache soap \
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install gd

# Setup xdebug and redis
RUN apk add --no-cache $PHPIZE_DEPS \
    && pecl install redis-5.1.1 \
    && pecl install xdebug-2.8.1 \
    && docker-php-ext-enable redis xdebug

# Setting PHP.ini
COPY ./custom.ini /usr/local/etc/php/conf.d/custom.ini
