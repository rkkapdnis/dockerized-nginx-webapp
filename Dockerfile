FROM nginx:alpine

COPY entrypoint.sh /entrypoint.sh
COPY index.html.template /index.html.template

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
