FROM alpine:latest

RUN apk update
RUN apk add libc6-compat
RUN wget https://dl.grafana.com/oss/release/grafana-7.0.1.linux-amd64.tar.gz
RUN tar -zxvf grafana-7.0.1.linux-amd64.tar.gz
RUN rm -rf grafana-7.0.1.linux-amd64.tar.gz

COPY defaults.ini /grafana-7.0.1/conf
COPY run.sh .

EXPOSE 3000

ENTRYPOINT sh run.sh