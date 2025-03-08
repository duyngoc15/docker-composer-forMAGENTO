FROM nginx:stable-alpine

ADD nginx.conf /etc/nginx

COPY ./default.conf /etc/nginx/conf.d/default.conf

COPY ./docker-entrypoint.sh /

RUN ln -sf /dev/stdout /var/log/nginx/access.log \
  && ln -sf /dev/stderr /var/log/nginx/error.log

ENTRYPOINT ["sh", "/docker-entrypoint.sh"]