FROM php:7.2-fpm-stretch

RUN apt update
RUN apt upgrade -y

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
# Use
# RUN docker-php-ext-install mcrypt
# With PHP version < 7.2
RUN pecl install mcrypt-1.0.2
RUN docker-php-ext-enable mcrypt

# Calendar
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
RUN docker-php-ext-enable mysqli

# Mysql
RUN docker-php-ext-install pdo_mysql

# Postgre
RUN apt-get install -y libpq-dev
RUN docker-php-ext-install pdo_pgsql

# Curl
RUN apt install -y curl