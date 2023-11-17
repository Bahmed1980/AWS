FROM  ubuntu:latest
LABEL maintainer=bidemiahmed5@gmail.com
RUN apt-get install -y httpd \
ADD https://www.free-css.com/assets/files/free-css-templates/download/page254/photogenic.zip /var/wwww/htmt/
WORKDIR /var/www/html/
RUN unzip photogenic.zip
RUN cp -rvf photogenic/*
RUN rm -rf photogenic photogenic.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
