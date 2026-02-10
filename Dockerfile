# Use the official Nginx image as the base image
FROM nginx:alpine
COPY default.conf /etc/nginx/conf.d/default.conf

# Copy all site files (HTML, CSS, JS, images, videos) into the Nginx public directory
COPY . /usr/share/nginx/html/

# Expose port 8080 for Cloud Run
EXPOSE 8080
