FROM ubuntu:latest

# Install required packages
RUN apt-get update && apt-get install -y \
    apache2 \
    build-essential \
    git \
    gcc \
    && apt-get clean

# Enable the Apache CGI module
RUN a2enmod cgi

# Create the CGI directory
RUN mkdir -p /var/www/html/cgi-bin

# Clone the repository and compile the CGI script
RUN git clone https://github.com/apb718/PersonalSite.git /PersonalSite && \
    g++ /PersonalSite/*.cpp -o /var/www/html/cgi-bin/index.cgi -O3 && \
    chmod +x /var/www/html/cgi-bin/index.cgi

# Configure Apache to recognize the CGI directory
RUN echo "ScriptAlias /cgi-bin/ /var/www/html/cgi-bin/" >> /etc/apache2/apache2.conf && \
    echo "<Directory \"/var/www/html/cgi-bin\">" >> /etc/apache2/apache2.conf && \
    echo "    AllowOverride None" >> /etc/apache2/apache2.conf && \
    echo "    Options +ExecCGI" >> /etc/apache2/apache2.conf && \
    echo "    AddHandler cgi-script .cgi" >> /etc/apache2/apache2.conf && \
    echo "    Require all granted" >> /etc/apache2/apache2.conf && \
    echo "</Directory>" >> /etc/apache2/apache2.conf

# Expose port 80 for HTTP
EXPOSE 80

# Start Apache in the foreground
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
