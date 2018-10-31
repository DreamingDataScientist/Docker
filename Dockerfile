FROM ubuntu:16.04
MAINTAINER parkminji
LABEL purpose="webapp"
RUN apt-get update
RUN apt-get install apache2 -y
WORKDIR /var/www/html
RUN ["/bin/bash", "-c", "echo welcome to docker auto-build ahahahaah >>> test.html"]
EXPOSE 80
CMD ["apachectl", "-DEFOREGROUND"]
