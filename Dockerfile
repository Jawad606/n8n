# Use the official n8n image
FROM n8nio/n8n:latest

# Recommended settings
ENV N8N_IGNORE_CONFIG_FILE=true
ENV N8N_USER_FOLDER=/home/node/.n8n
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true
ENV DB_SQLITE_POOL_SIZE=2
ENV N8N_RUNNERS_ENABLED=true

# Railway will provide PORT
EXPOSE 5678
