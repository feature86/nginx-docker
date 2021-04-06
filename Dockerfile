FROM nginx:1.19.9-alpine
LABEL maintainer="feature86"


RUN mkdir -p /etc/nginx/sites-enabled
RUN  rm -rf /etc/nginx/conf.d

COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./default.conf /etc/nginx/sites-enabled/default
