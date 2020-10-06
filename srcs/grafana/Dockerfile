FROM alpine:latest

RUN apk update
RUN apk add libc6-compat
COPY ./grafana-7.2.0.linux-amd64.tar.gz .
RUN tar -zxvf grafana-7.2.0.linux-amd64.tar.gz
RUN rm -rf grafana-7.2.0.linux-amd64.tar.gz

COPY defaults.ini /grafana-7.2.0/conf
COPY data/dashboard.json /grafana-7.2.0/conf/provisioning/dashboards
COPY data/dashboard.yaml /grafana-7.2.0/conf/provisioning/dashboards
COPY data/datasource.yaml /grafana-7.2.0/conf/provisioning/datasources

COPY run.sh .

EXPOSE 3000

ENTRYPOINT sh run.sh
