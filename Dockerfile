FROM centos:stream9

WORKDIR /app

# Update packages and install Apache
RUN dnf -y update && \
    dnf -y install httpd && \
    dnf clean all

# Copy website files
COPY ./html/ /var/www/html/

# Expose port 80
EXPOSE 80

# Start Apache in foreground
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]

