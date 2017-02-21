#!/bin/bash

cd ../
docker run -d --name "$1" -p "$2:80" -v $(pwd)/web/src:/var/www -v $(pwd)/config/nginx.conf:/etc/nginx/nginx.conf nginx;