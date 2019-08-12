ARG PHP_VERSION

FROM php:${PHP_VERSION}-fpm-stretch

RUN apt update

# Extension PHP
RUN apt-get install -y apt-transport-https
RUN apt install -y apt-utils
RUN apt install -y libmcrypt-dev
RUN apt install -y libicu-dev
RUN docker-php-ext-install -j$(nproc) intl
RUN apt-get install -y libfreetype6-dev libjpeg62-turbo-dev libpng-dev
RUN docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/
RUN docker-php-ext-install -j$(nproc) gd

# Enable Mcrypt
RUN if [ ${PHP_VERSION} -ge 7.2 ]; then \
    pecl install mcrypt-1.0.2 && \
    docker-php-ext-enable mcrypt \
;else \
    docker-php-ext-install mcrypt \
;fi

# Calendar
RUN docker-php-ext-configure calendar
RUN docker-php-ext-install calendar

# Iconv
RUN docker-php-ext-install iconv

# XML
RUN apt install -y libxml2-dev
RUN docker-php-ext-install simplexml

# Mbstring
RUN docker-php-ext-install mbstring

# PDO
RUN docker-php-ext-install pdo

# Mysqli
RUN docker-php-ext-install mysqli

# Mysql
RUN docker-php-ext-install pdo_mysql

# Postgre
RUN apt-get install -y libpq-dev
RUN docker-php-ext-install pdo_pgsql

# Curl
RUN apt install -y curl