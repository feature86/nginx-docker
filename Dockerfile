FROM nginx:1.19.9-alpine
LABEL maintainer="feature486@gmail.com"


RUN mkdir -p /etc/nginx/sites-enabled

RUN  rm /etc/nginx/conf.d/*

COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./default.conf /etc/nginx/sites-enabled/default