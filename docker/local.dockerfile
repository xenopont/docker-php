# Build:
# docker build -t php-app-image --file docker/local.dockerfile .
# Run:
# docker run --rm -d --name php-app -v ${PWD}:/srv -p 8080:80 php-app-image

# latest stable php version
# FROM php:fpm-alpine
# or latest latest php version
FROM php:rc-fpm-alpine

LABEL maintainer="smith404@live.com"

RUN apk update && \
    apk add --no-cache nginx && \
    mkdir -p /srv

WORKDIR /srv

COPY docker/local-nginx.conf /etc/nginx/conf.d/default.conf

CMD ["sh", "/srv/docker/local-start.sh"]
