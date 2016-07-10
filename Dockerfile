FROM ubuntu:14.04
Maintainer Anshuman Gholap <anshuonline@gmail.com>
RUN apt-get update && \ 
    apt-get install -y apache2 && \
    apt-get install -y php5 php5-common php5-cli php5-mysql php5-curl && \
EXPOSE  80
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
