FROM php:5.6-cli-alpine
COPY . /var/www
WORKDIR /var/www

COPY --from=composer /usr/bin/composer /usr/bin/composer

RUN composer install

ENTRYPOINT ["ash"]
