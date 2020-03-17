FROM fedora
MAINTAINER guru211@gmail.com 8970040555
# dev info
RUN yum install -y httpd
WORKDIR /var/www/html
#changes to working directory, below dest . means the path defined in WORKDIR
COPY . .
EXPOSE 80
#CMD httpd -DFOREGROUND
#CMD command can be replaced by docker user while starting the container
ENTRYPOINT httpd -DFOREGROUND
#ENTRYPOINT is not replaced by the docker user while running the docker using arguments
