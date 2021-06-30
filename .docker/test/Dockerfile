FROM webmagicagency/php-7.3-fpm_laravel6.x

# Install PHP extentions

RUN apt-get update \
    && apt-get install -y libpq-dev \
    && docker-php-ext-configure pgsql -with-pgsql=/usr/local/pgsql \
    && docker-php-ext-install pdo pdo_pgsql pgsql


#COPY .docker/vhost.conf /etc/apache2/sites-available/000-default.conf
