FROM nginx

COPY devops.conf /devops.conf

RUN \
  apt-get update \
  && apt-get -y install gettext-base \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

ENTRYPOINT envsubst '$NGINX_SERVER_ADDRESS' < /devops.conf > /etc/nginx/conf.d/default.conf && exec nginx -g 'daemon off;'
