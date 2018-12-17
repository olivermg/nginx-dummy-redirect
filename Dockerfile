FROM nginx:1.13

WORKDIR /workspace

RUN addgroup nginx root && \
        chmod g+rwx /var/cache/nginx /var/run /var/log/nginx && \
        chgrp -R root /var/cache/nginx && \
        apt-get update && \
        apt-get install -y ngrep

EXPOSE 8081

COPY nginx.conf /etc/nginx/nginx.conf
COPY html /workspace

USER nginx
