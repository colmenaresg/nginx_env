FROM nginx:1.13.0-alpine

#COPY .docker/app/nginx/.htpasswd /etc/nginx/.htpasswd
COPY default.conf /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/nginx.conf

RUN echo "Hello World" > /usr/share/nginx/html/index.html
RUN apk add --no-cache nginx-mod-http-perl=1.10.3-r1

ENV ENV "DEV"

EXPOSE 80
