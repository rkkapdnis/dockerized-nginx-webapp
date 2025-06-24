#!/bin/sh

# Example IP address substitution (use env var or command)
IP_ADDR=$(hostname -i)

# Replace placeholder with actual IP
envsubst '${IP_ADDR}' < /index.html.template > /usr/share/nginx/html/index.html

# Start Nginx
exec nginx -g 'daemon off;'
