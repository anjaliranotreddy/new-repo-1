FROM ubuntu
RUN apt update && apt install apache2 -y
RUN cd /var/www/html/ && rm -rf index.html
ADD index.html /var/www/html/
CMD ["apache2ctl", "-D", "FOREGROUND"]
