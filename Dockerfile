#+++++++++++++++++++++++++++++++++++++++
# Dockerfile for webdevops/nginx:alpine
#    -- automatically generated  --
#+++++++++++++++++++++++++++++++++++++++

FROM webdevops/base:alpine

ENV WEB_DOCUMENT_ROOT=/app \
    WEB_DOCUMENT_INDEX=index.php \
    WEB_ALIAS_DOMAIN=*.vm \
    WEB_PHP_TIMEOUT=600 \
    WEB_PHP_SOCKET=""
ENV SERVICE_NGINX_CLIENT_MAX_BODY_SIZE="50m"

RUN set -x \
    # Install nginx
    && apk-install \
        nginx \
    && docker-run-bootstrap \
    && docker-image-cleanup

EXPOSE 80 443
