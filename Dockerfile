FROM nginx:alpine

COPY ./nginx.conf /etc/nginx/nginx.conf

RUN touch /var/run/nginx.pid && \
 chown -R $userid:root /var/run/nginx.pid && \
 chown -R $userid:root /var/cache/nginx && \
 mkdir -p /var/www/bakro && \
 touch /var/www/bakro/index.html && \
 echo "welcome to bakr site" > /var/www/bakro/index.html
 
USER $userid

