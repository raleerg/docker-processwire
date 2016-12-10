FROM php:7-apache
COPY php.ini /usr/local/etc/php/

RUN usermod -u 1000 www-data
RUN usermod -G staff www-data

RUN a2enmod rewrite
RUN service apache2 restart

RUN apt-get update \
  && apt-get install -y libfreetype6-dev libjpeg62-turbo-dev libpng12-dev libmcrypt-dev \
&& docker-php-ext-install pdo_mysql mysqli mbstring gd iconv mcrypt
