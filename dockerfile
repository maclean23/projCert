# Use the official PHP image with PHP-FPM
FROM php:8.1-fpm

# Install Nginx and other dependencies
RUN apt-get update && apt-get install -y nginx

# Install any necessary PHP extensions
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Copy the Nginx configuration file into the container
COPY nginx/default.conf /etc/nginx/conf.d/default.conf

# Set the working directory inside the container
WORKDIR /var/www/html

# Copy the PHP application from the host to the container
COPY . .

# Set proper permissions for the web files
RUN chown -R www-data:www-data /var/www/html \
    && chmod -R 755 /var/www/html

# Expose port 80 to the outside world
EXPOSE 80

# Start Nginx and PHP-FPM
CMD ["sh", "-c", "service nginx start && php-fpm"]
