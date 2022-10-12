# Define base image
FROM nginx:stable-alpine

# Copy nginx configuration files to relevant directories
COPY ./app_dir/app.conf /etc/nginx/conf.d/default.conf

COPY ./app_dir/demo-index.html  /usr/share/nginx/html

# Expose container port
EXPOSE 80