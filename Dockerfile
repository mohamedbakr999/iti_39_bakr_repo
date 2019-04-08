FROM nginx:alping

COPY ./nginx.conf /etc/nginx/nginx.conf
RUN adduser -u 1000 bakr  --disabled-password
chown -R bakr:bakr /var/run/nginx.pid && \
chown -R bakr:bakr /var/cache/nginx && \

chown -R $userid:root /var/run/nginx.pid && \
chown -R $userid:root /var/run/nginx && \
USER $userid

