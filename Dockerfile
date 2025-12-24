FROM php:8.2-apache

# Install system dependencies and Composer
RUN apt-get update && apt-get install -y \
    curl \
    zip \
    unzip \
    && docker-php-ext-install pdo pdo_mysql \
    && curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Copy the application code
COPY . /var/www/html/

# Copy Apache configuration
COPY apache-config.conf /etc/apache2/sites-available/000-default.conf

# Set working directory
WORKDIR /var/www/html

# Install PHP dependencies (skip if no dependencies)

# Set proper permissions
RUN chown -R www-data:www-data /var/www/html \
    && chmod -R 755 /var/www/html

# Enable Apache modules and allow .htaccess overrides
RUN a2enmod rewrite headers expires
RUN sed -i 's/AllowOverride None/AllowOverride All/g' /etc/apache2/apache2.conf

# Configure PHP and Apache
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf
RUN echo "<FilesMatch \\.php$>\n    SetHandler application/x-httpd-php\n</FilesMatch>" > /etc/apache2/conf-available/php.conf
RUN a2enconf php

# Expose port 80
EXPOSE 80

# Start Apache
CMD ["apache2-foreground"]
