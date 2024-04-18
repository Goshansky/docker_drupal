FROM drupal

# Установка необходимых расширений PHP
RUN docker-php-ext-install pdo_mysql \
    && a2enmod rewrite

# Установка Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Открываем порт 80
EXPOSE 80