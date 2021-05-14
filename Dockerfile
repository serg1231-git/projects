FROM python:3.9.4-buster
ENV PYTHONUNBUFFERED=1
RUN mkdir /opt/djangoproject/
COPY ./djangoproject /opt/djangoproject/
COPY ./install.txt /opt/djangoproject/
WORKDIR /opt/djangoproject/
RUN pip3 install -r install.txt
COPY ./Proxy_nginx/ /opt/Proxy/
CMD [ "uwsgi", "--ini", "/opt/Proxy/supersite_oh.ini"]