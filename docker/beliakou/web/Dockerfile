FROM centos:7

RUN yum install -y httpd web-assets-httpd && \
    yum clean all

RUN echo "logs are sendingto stdout" > /var/www/html/index.html

RUN ln -s /dev/stdout /var/log/httpd/access_log && \
    ln -s /dev/stderr /var/log/httpd/error_log

EXPOSE 80
ENTRYPOINT [ "httpd" ]
CMD ["-DFOREGROUND"]
# VOLUME /usr/share/nginx/html

# FROM myhttpd:1.0