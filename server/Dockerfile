FROM nginx:1.17.4-alpine
RUN rm -rf /etc/nginx/conf.d
RUN rm -rf /etc/nginx/sites-enabled/
COPY ./vhost /etc/nginx/conf.d