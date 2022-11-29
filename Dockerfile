# Then place the built static site on webserver
FROM httpd:alpine

WORKDIR /usr/local/apache2/htdocs/
COPY . .

EXPOSE 80