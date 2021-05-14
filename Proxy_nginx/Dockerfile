FROM nginx:latest
COPY ./uwsgi_params /etc/nginx/uwsgi_params
COPY ./default.conf /etc/nginx/conf.d/
RUN mkdir /opt/Proxy
COPY ./default.conf /opt/Proxy/
COPY ./supersite_oh.ini /opt/Proxy/
RUN ls -s /opt/Proxy/default.conf /etc/nginx/conf.d/default.conf
WORKDIR /opt/Proxy/
CMD [ "nginx","-g", "daemon off;"]