FROM centos:7

COPY conf/nginx.repo /etc/yum.repos.d/nginx.repo

RUN yum install -y nginx && \
    yum install -y https://repo.ius.io/ius-release-el7.rpm && \
    yum -y install \
        php71u-fpm \
        php71u-common \
        php71u-cli --enablerepo=ius && yum clean all

RUN mkdir /nginx_php

RUN ln -s /dev/stdout /nginx_php/access.log && \
    ln -s /dev/stderr /nginx_php/error.log

COPY html-ssl /nginx_php
COPY php-info.php /nginx_php
 
COPY conf/nginx.conf /etc/nginx/conf.d/default.conf
COPY conf/start.sh /start.sh

RUN chmod +x /start.sh

CMD /start.sh