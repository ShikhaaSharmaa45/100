FROM ubuntu
RUN apt-get update
RUN apt-get install -y apache2 \
  zip \
 unzip
RUN apt-get install apache2-utils -y
RUN apt-get clean
ADD https://www.free-css.com/assets/files/free-css-templates/download/page296/little-fashion.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip little-fashion.zip
RUN cp -rvf 2127_little_fashion/* .
EXPOSE 80
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
