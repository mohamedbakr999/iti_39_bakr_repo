FROM nginx:alping

COPY ./nginx.conf /etc/nginx/nginx.conf

USER $userid

