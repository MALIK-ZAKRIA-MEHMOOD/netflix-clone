FROM centos:8

# Update packages
RUN yum update -y

# Install Apache (httpd)
RUN yum install -y httpd

# Copy website files
COPY . /var/www/html/

# Expose port
EXPOSE 4000

# Start Apache in the foreground
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]

