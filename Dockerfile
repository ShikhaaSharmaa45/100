FROM ubuntu
RUN apt-get update
RUN apt-get install -y apache2 \
  zip \
 unzip
RUN apt-get install apache2-utils -y
RUN apt-get clean
ADD https://www.free-css.com/assets/files/free-css-templates/download/page295/antique-cafe.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip antique-cafe.zip
RUN cp -rvf 2126_antique_cafe/* .
EXPOSE 80
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
