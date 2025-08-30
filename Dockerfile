# Use the official n8n image
FROM n8nio/n8n:latest

# Set environment variables (Railway will inject its own values at runtime)
ENV N8N_HOST=${N8N_HOST}
ENV N8N_PROTOCOL=${N8N_PROTOCOL}
ENV WEBHOOK_URL=${WEBHOOK_URL}

# Make sure n8n ignores any old config files and uses envs only
ENV N8N_IGNORE_CONFIG_FILE=true
ENV N8N_USER_FOLDER=/home/node/.n8n

# Recommended extra settings
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true
ENV DB_SQLITE_POOL_SIZE=2
ENV N8N_RUNNERS_ENABLED=true

# Default port
EXPOSE 5678

# Start n8n
CMD ["n8n"]
