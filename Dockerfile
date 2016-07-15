FROM quay.io/vektorcloud/dumb-init:latest

RUN apk add --no-cache ca-certificates \
    nginx mysql-client libssh2 curl libpng \
    freetype libjpeg-turbo libgcc libxml2 \
    libstdc++ icu-libs libltdl libmcrypt msmtp

RUN apk add --no-cache php php-fpm php-json php-zlib php-xml \
    php-pdo php-phar php-openssl php-pdo_mysql php-mysqli \
    php-gd php-mcrypt php-curl php-opcache php-ctype \
    php-intl php-bcmath php-dom php-xmlreader

COPY conf/nginx.conf /etc/nginx/nginx.conf
COPY conf/php-fpm.conf /etc/php/
COPY conf/php.ini /etc/php/
COPY run.sh /run.sh

EXPOSE 80
CMD /bin/sh /app/run.sh
