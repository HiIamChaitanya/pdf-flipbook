# Use the official Python 3 image
FROM python:3.9-slim

# Set the working directory
WORKDIR /app
COPY . .
# Install any dependencies if needed (not necessary for http.server)
RUN apt-get update && apt-get install -y nginx

# Copy the NGINX configuration file
COPY nginx.conf /etc/nginx/nginx.conf

# Expose the HTTP server port
EXPOSE 80

# Command to run the Python HTTP server
CMD ["sh", "-c", "python3 -m http.server 8000 & nginx -g 'daemon off;'"]
