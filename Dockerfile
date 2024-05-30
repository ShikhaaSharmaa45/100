FROM amazonlinux:latest
RUN yum update -y && \
    yum install -y httpd && \
    yum search wget && \
    yum install wget -y && \
    yum install unzip -y
RUN cd /var/www/html
RUN wget https://www.free-css.com/assets/files/free-css-templates/download/page293/fitapp.zip
RUN unzip fitapp.zip
RUN cp -r mobile-app-html-template/* /var/www/html
EXPOSE 80
ENTRYPOINT ["/usr/sbin/httpd", "-D", "FOREGROUND"]
