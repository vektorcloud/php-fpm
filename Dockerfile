FROM quay.io/vektorcloud/dumb-init:latest

RUN apk add --no-cache ca-certificates \
    nginx mysql-client libssh2 curl libpng \
    freetype libjpeg-turbo libgcc libxml2 \
    libstdc++ icu-libs libltdl libmcrypt msmtp

RUN apk add --no-cache \
  php7 \
  php7-session \
  php7-openssl \
  php7-phar \
  php7-pdo_odbc \
  php7-pdo_mysql \
  php7-fpm \
  php7-ctype \
  php7-curl \
  php7-json \
  php7-dom \
  php7-pdo \
  php7-xmlreader \
  php7-pdo_sqlite \
  php7-opcache \
  php7-gd \
  php7-xml \
  php7-pdo_pgsql \
  php7-pdo_dblib \
  php7-bcmath \
  php7-pecl-mcrypt

COPY conf/nginx.conf /etc/nginx/nginx.conf
COPY conf/php-fpm.conf /etc/php/
COPY conf/php.ini /etc/php/
COPY run.sh /run.sh

EXPOSE 80
ENTRYPOINT ["/run.sh"]
