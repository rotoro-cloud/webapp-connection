FROM python:3.6-alpine

RUN apk add --update --no-cache curl jq python3 py3-pip

ADD ./requirements.txt /opt/webapp-connection/

WORKDIR /opt/webapp-connection

RUN pip install -r requirements.txt

ADD . /opt/webapp-connection

EXPOSE 8080

ENTRYPOINT ["python3", "app.py"]

