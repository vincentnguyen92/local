ARG PHP_LOCAL_VERSION

FROM php:${PHP_LOCAL_VERSION}-fpm-stretch

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
RUN if [ $(php -r "echo PHP_MAJOR_VERSION;") = "7" ]; then \
  if [ $(php -r "echo PHP_MINOR_VERSION;") = "2" ] || [ $(php -r "echo PHP_MINOR_VERSION;") = "3" ]; then \
    pecl install mcrypt-1.0.2 && \
    docker-php-ext-enable mcrypt \
  ;else \
    docker-php-ext-install mcrypt \
  ;fi \
else \
  docker-php-ext-install mcrypt \
;fi

# Calendar
RUN docker-php-ext-configure calendar
RUN docker-php-ext-install calendar

# Iconv
RUN docker-php-ext-install iconv

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

# Install composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin/ --filename=composer

# Install SSMTP Server for sending email
RUN apt-get install -y ssmtp && \
  apt-get clean && \
  echo 'sendmail_path = "/usr/sbin/ssmtp -t"' > /usr/local/etc/php/conf.d/mail.ini

# Install Zip
RUN apt-get install -y zip libzip-dev \
  && docker-php-ext-configure zip --with-libzip \
  && docker-php-ext-install zip

# Set TAG image
TAG iamvincent/php:stretch-${PHP_LOCAL_VERSION}