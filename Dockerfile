# Use Node.js 22 Alpine (Required for latest OmniRoute dependencies)
FROM node:22-alpine

# Set working directory inside the container
WORKDIR /app

# Install OmniRoute globally with legacy peer deps if needed
RUN npm install -g omniroute --legacy-peer-deps

# Expose the default OmniRoute port
EXPOSE 20128

# Start OmniRoute binding to Render's assigned port or default 20128
CMD ["sh", "-c", "omniroute --port ${PORT:-20128}"]
