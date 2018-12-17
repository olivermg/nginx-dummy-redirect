FROM nginx:1.13-alpine

WORKDIR /workspace

RUN addgroup nginx root
RUN chmod g+rwx /var/cache/nginx /var/run /var/log/nginx
RUN chgrp -R root /var/cache/nginx

EXPOSE 8081

COPY nginx.conf /etc/nginx/nginx.conf
COPY html /workspace

USER nginx
