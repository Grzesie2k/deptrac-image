FROM php:7.1-alpine
RUN curl -L https://github.com/sensiolabs-de/deptrac/releases/download/0.4.0/deptrac.phar --output deptrac.phar
RUN docker-php-ext-install json
ENTRYPOINT ["php", "/deptrac.phar"]
WORKDIR /app
