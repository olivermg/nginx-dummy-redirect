#!/usr/bin/env bash

docker run -it --rm \
       -p 8080:8081 \
       -v $(pwd)/nginx.conf:/etc/nginx/nginx.conf:ro \
       -v $(pwd)/html:/workspace:Z \
       nginx
