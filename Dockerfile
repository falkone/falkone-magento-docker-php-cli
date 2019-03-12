FROM php:7.2-cli-alpine3.9

# Install dependencies
RUN apk add --update --no-cache \
        mc \
        git \
        redis \
        ssmtp \
        screen \
        mysql-client \
    && docker-php-ext-configure \
        gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install \
        bcmath \
        ctype \
        curl \
        dom \
        gd \
        hash \
        intl \
        mbstring \
        opcache \
        openssl\
        pdo_mysql \
        soap \
        sockets \
        xsl \
        zip \
    && rm -rf /var/cache/apk/*

COPY docker-php-entrypoint /usr/local/bin/
RUN ["chmod", "+x", "/usr/local/bin/docker-php-entrypoint"]
RUN ln -s /usr/local/bin/php /usr/bin/php

ENV MAGENTO_ROOT /var/www/magento

WORKDIR /var/www/magento

USER root

CMD ["php", "-a"]