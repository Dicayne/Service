FROM alpine:latest

RUN apk update
RUN apk add openrc influxdb

COPY ./run.sh .

EXPOSE 8086

ENTRYPOINT sh run.sh