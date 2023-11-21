FROM  ubuntu:latest
LABEL maintainer=bidemiahmed5@gmail.com
RUN  apt-get install -y apache2
ADD https://www.free-css.com/assets/files/free-css-templates/download/page254/photogenic.zip /var/wwww/htmt/
WORKDIR /var/www/html/
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
