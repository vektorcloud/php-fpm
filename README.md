# php-fpm

![circleci][circleci]

Alpine-based image with nginx + php-fpm

## Usage

Simply mount an existing php application webroot into the container:
```
docker run -d -v /path/to/your/webroot:/srv/www -p 80:80 vektorcloud/php-fpm:latest
```

[circleci]: https://img.shields.io/circleci/project/github/vektorcloud/php-fpm.svg "php-fpm"
