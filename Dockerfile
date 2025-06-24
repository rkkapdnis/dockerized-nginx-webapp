FROM nginx:alpine

# Copy custom entrypoint and template
COPY entrypoint.sh /entrypoint.sh
COPY index.html.template /index.html.template

# Give execute permissions to the script
RUN chmod +x /entrypoint.sh

# Set entrypoint to the script that will generate index.html at runtime
ENTRYPOINT ["/entrypoint.sh"]
