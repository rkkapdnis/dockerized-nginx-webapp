#!/bin/sh

IP_ADDR=$(hostname -i)

sed "s/{{IP_ADDRESS}}/$IP_ADDR/" /inedx.html.template > /usr/share/nginx/html/index.html

nginx -g "daemon off;"
