FROM n8nio/n8n:latest

# Set user folder to persist data
ENV N8N_USER_FOLDER=/data
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=3000

# Create data directory
USER root
RUN mkdir -p /data && chown node:node /data
USER node

# Expose port
EXPOSE 3000

# Start n8n
CMD ["n8n", "start"]
