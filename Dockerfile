FROM nginx:alpine

COPY ./nginx.conf /etc/nginx/nginx.conf

RUN touch /var/run/nginx.pid && \
 chown -R $userid:root /var/run/nginx.pid && \
 chown -R $userid:root /var/cache/nginx 
USER $userid

