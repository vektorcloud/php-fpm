# php-fpm

[![circleci][circleci]](https://circleci.com/gh/vektorcloud/php-fpm)

Alpine-based image with nginx + php-fpm

## Usage

Simply mount an existing php application webroot into the container:
```
docker run -d -v /path/to/your/webroot:/srv/www -p 80:80 vektorcloud/php-fpm:latest
```

[circleci]: https://img.shields.io/circleci/build/gh/vektorcloud/php-fpm?color=1dd6c9&logo=CircleCI&logoColor=1dd6c9&style=for-the-badge "php-fpm"
