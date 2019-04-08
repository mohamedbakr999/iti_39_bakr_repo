FROM nginx:alping

COPY ./nginx.conf /etc/nginx/nginx.conf
chown -R $userid:root /var/run/nginx.pid && \
chown -R $userid:root /var/run/nginx && \
USER $userid

