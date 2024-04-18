FROM drupal
RUN docker-php-ext-install pdo_mysql && a2enmod rewrite
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=usr/local/bin --filename=getcomposer
EXPOSE 80