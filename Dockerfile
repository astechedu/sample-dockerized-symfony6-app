 FROM php:8.1-apache

  RUN apt-get update && apt-get install -y \
      git \
      curl \
      zip \
      unzip

 # RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer 
   

  WORKDIR /var/www/html
  COPY symf6xproject ./symf6xproject
  RUN chown -R www-data:www-data /var/www
