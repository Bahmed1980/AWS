FROM  ubuntu:latest
LABEL maintainer=bidemiahmed5@gmail.com
RUN apt update 
RUN apt-get install -y apache2
RUN apt-get install apache2-utils
RUN apt clean 
ADD https://www.free-css.com/assets/files/free-css-templates/download/page254/photogenic.zip /var/wwww/htmt/
WORKDIR /var/www/html/
RUN rm -rf photogenic photogenic.zip
CMD [“apache2ctl”, “-D”, “FOREGROUND”]
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80 22
