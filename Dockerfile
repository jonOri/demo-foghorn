FROM httpd:2.4.46-alpine

LABEL maintainer="Jon Starling <jon@ori.co>"

COPY httpd.conf /usr/local/apache2/conf/
COPY passenv.conf /usr/local/apache2/conf/extra/

COPY index.html ori.css ori.js /usr/local/apache2/htdocs/
COPY entrypoint.sh /usr/local/bin/
COPY orienv.pl /usr/local/apache2/cgi-bin/

ENTRYPOINT ["entrypoint.sh"]
CMD httpd-foregroundFROM httpd:2.4.46-alpine

LABEL maintainer="Jon Starling <jon@ori.co>"

COPY httpd.conf /usr/local/apache2/conf/
COPY passenv.conf /usr/local/apache2/conf/extra/

COPY index.html ori.css /usr/local/apache2/htdocs/
COPY entrypoint.sh /usr/local/bin/
COPY orienv.pl /usr/local/apache2/cgi-bin/

ENTRYPOINT ["entrypoint.sh"]
CMD httpd-foreground
