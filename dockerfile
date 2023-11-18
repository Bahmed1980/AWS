FROM  ubuntu:latest
LABEL maintainer=bidemiahmed5@gmail.com
RUN yum install -y httpd \
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
