ARG DRUPAL_VERSION

FROM drupal:${DRUPAL_VERSION}

RUN apt update && apt full-upgrade -y && apt autoremove -y && apt autoclean

RUN apt install unzip
RUN pecl install apcu
RUN cd /opt/drupal && composer require drupal/phpmailer_smtp