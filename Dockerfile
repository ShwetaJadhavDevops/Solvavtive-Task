# Use Ubuntu base image
FROM ubuntu:20.04

# Install Apache
RUN apt update && \
    apt install -y apache2 && \
    apt clean

# Copy a sample HTML file
COPY index.html /var/www/html/index.html

# Expose port
EXPOSE 80

# Start Apache
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
