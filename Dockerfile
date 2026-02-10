# Use the official Nginx image as the base image
FROM nginx:alpine
COPY default.conf /etc/nginx/conf.d/default.conf

# Copy the index.html file from your local directory into the Nginx public directory
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80, the default HTTP port (optional, good practice)
EXPOSE 8080
