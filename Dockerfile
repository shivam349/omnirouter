# Official Node.js Base Image
FROM node:20-alpine

# Set working directory inside the container
WORKDIR /app

# Install OmniRoute globally
RUN npm install -g omniroute

# Expose the default OmniRoute port
EXPOSE 20128

# Start OmniRoute binding to Render's assigned port or default 20128
CMD ["sh", "-c", "omniroute --port ${PORT:-20128}"]