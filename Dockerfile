FROM nginx

WORKDIR /app/www/

RUN apt-get update && apt-get install -y file 

COPY ./html /var/concentration/html
RUN chmod -R 755 /var/concentration/html

COPY ./conf/nginx.conf /etc/nginx/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
