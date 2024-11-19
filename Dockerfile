FROM ubuntu:20.04

# Install necessary packages
RUN apt update && apt install -y software-properties-common && add-apt-repository universe


RUN apt update 
RUN apt install -y \
    apache2 \
    g++ \
    vim \
    git 

RUN apt upgrade 
RUN apt clean

# Enable CGI module
RUN a2enmod cgi

# Automatically configure Apache for CGI
RUN echo '<VirtualHost *:8080>' >> /etc/apache2/sites-available/000-default.conf && \
    echo '    ServerAdmin webmaster@localhost' >> /etc/apache2/sites-available/000-default.conf && \
    echo '    DocumentRoot /var/www/html' >> /etc/apache2/sites-available/000-default.conf && \
    echo '' >> /etc/apache2/sites-available/000-default.conf && \
    echo '    ScriptAlias /cgi-bin/ /usr/lib/cgi-bin/' >> /etc/apache2/sites-available/000-default.conf && \
    echo '' >> /etc/apache2/sites-available/000-default.conf && \
    echo '    <Directory "/usr/lib/cgi-bin/">' >> /etc/apache2/sites-available/000-default.conf && \
    echo '        AllowOverride None' >> /etc/apache2/sites-available/000-default.conf && \
    echo '        Options +ExecCGI' >> /etc/apache2/sites-available/000-default.conf && \
    echo '        AddHandler cgi-script .cgi' >> /etc/apache2/sites-available/000-default.conf && \
    echo '        Require all granted' >> /etc/apache2/sites-available/000-default.conf && \
    echo '    </Directory>' >> /etc/apache2/sites-available/000-default.conf && \
    echo '' >> /etc/apache2/sites-available/000-default.conf && \
    echo '    ErrorLog ${APACHE_LOG_DIR}/error.log' >> /etc/apache2/sites-available/000-default.conf && \
    echo '    CustomLog ${APACHE_LOG_DIR}/access.log combined' >> /etc/apache2/sites-available/000-default.conf && \
    echo '</VirtualHost>' >> /etc/apache2/sites-available/000-default.conf

# Copy the CGI script to the appropriate directory
WORKDIR /tmp
RUN git clone https://github.com/apb718/PersonalSite && \
        cd PersonalSite && \
        g++ main.cpp -o index.cgi && \
        mv index.cgi /usr/lib/cgi-bin/ && \
        chmod +x /usr/lib/cgi-bin/index.cgi

# Configure Apache to listen on port 8080
RUN echo "Listen 8080" >> /etc/apache2/ports.conf

# Expose port 8080
EXPOSE 8080

# Start Apache web server
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
