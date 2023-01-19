FROM wordpress:latest

COPY build/upload.ini /usr/local/etc/php/conf.d/upload.ini

COPY build/start.sh /start.sh

COPY build/wp-config-docker-custom.php /wp-config-docker-custom.php

RUN chmod +x /start.sh

ENTRYPOINT /start.sh

CMD ["start.sh", apache2-foreground"]
