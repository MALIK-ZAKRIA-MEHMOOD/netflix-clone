# Use lightweight Apache image
FROM httpd:alpine

# Set working directory
WORKDIR /usr/local/apache2/htdocs/

# Copy your website files
COPY ./html/ ./

# Expose port 80 (already default in httpd)
EXPOSE 80

# Command is already set in httpd:alpine (runs httpd in foreground)

