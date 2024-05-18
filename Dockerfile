# Use the official Nginx base image
FROM nginx:latest

# Set the working directory to /usr/share/nginx/html
WORKDIR /usr/share/nginx/html

# Copy all content from the specified absolute path on the host to /usr/share/nginx/html inside the container
COPY ./ /usr/share/nginx/html/

# Overwrite the default index.html with our index.html
COPY ./index.html /usr/share/nginx/html/index.html

# Expose port 80
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]
