#!/bin/bash

mkdir -p /var/cache/ngx_cache/cache && \
mkdir -p /var/cache/ngx_cache/tmp && \
  find /var/cache/ngx_cache -type d -exec chown nginx:nginx {} \; && \
  find /var/cache/ngx_cache -type d -exec chmod 750 {} \; && \
  sh /etc/nginx/bin/write_resolvers.sh && \
  /etc/nginx/bin/dockerize \
    -template /etc/nginx/conf.d/http_logging.conf.tmpl:/etc/nginx/conf.d/http_logging.conf \
    /usr/sbin/nginx -g 'daemon off;'
