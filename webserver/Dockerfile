FROM debian:latest

RUN apt-get update

RUN apt-get -y install \
apache2 php7.0 php7.0-mysql

ADD Pages /var/www/site

ADD serveur.conf /etc/apache2/sites-enabled/000-default.conf

EXPOSE 80

ENV APACHE_LOG_DIR /var/log/apache2

ENTRYPOINT ["/usr/sbin/apache2ctl"]

CMD ["-D", "FOREGROUND"]
