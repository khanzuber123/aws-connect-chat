# Use an official Node.js runtime as the base image
FROM node:18-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the project files into the container
COPY . .

# Install the http-server package
RUN npm install -g http-server

# Expose port 8080 for the app
EXPOSE 8080

# Command to run the HTTP server
CMD ["http-server", ".", "-p", "8080"]
