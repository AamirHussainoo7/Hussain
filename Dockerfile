# Use Nginx as base image
FROM nginx:alpine

# Set maintainer info (optional)
LABEL maintainer="yourname@example.com"

# Remove the default nginx website
RUN rm -rf /usr/share/nginx/html/*

# Copy all website files into the Nginx public folder
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
