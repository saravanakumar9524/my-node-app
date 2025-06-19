# Use official Node.js image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy package files and install
COPY package*.json ./
RUN npm install

# Copy rest of the app
COPY . .

# Expose port (change if your app uses a different one)
EXPOSE 3000

# Run the app
CMD ["node", "app.js"]
