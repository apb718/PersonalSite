# Use the official httpd image as the base image
FROM httpd:2.4

# Set the working directory for custom files
WORKDIR /usr/local/apache2

# Create the CGI directory
RUN mkdir -p ./cgi-bin

# Copy CGI scripts and set permissions
COPY main.cpp ./cgi-bin/
RUN mkdir ./cgi-bin/compiled_output \
    && apt-get update \
    && apt-get install -y g++ \
    && g++ -std=c++17 ./cgi-bin/main.cpp -o ./cgi-bin/compiled_output/main.cgi \
    && chmod +x ./cgi-bin/compiled_output/main.cgi

# Configure httpd to support CGI
RUN echo "ScriptAlias /cgi-bin/ /usr/local/apache2/cgi-bin/" >> ./conf/httpd.conf \
    && echo "<Directory \"/usr/local/apache2/cgi-bin/\">" >> ./conf/httpd.conf \
    && echo "    AllowOverride None" >> ./conf/httpd.conf \
    && echo "    Options +ExecCGI" >> ./conf/httpd.conf \
    && echo "    AddHandler cgi-script .cgi" >> ./conf/httpd.conf \
    && echo "    Require all granted" >> ./conf/httpd.conf \
    && echo "</Directory>" >> ./conf/httpd.conf

# Expose the default HTTP port
EXPOSE 80

# Start the Apache server
CMD ["httpd-foreground"]
