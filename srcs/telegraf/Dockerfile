FROM alpine:latest

RUN apk update
RUN apk add libc6-compat

COPY ./telegraf-1.15.3_linux_amd64.tar.gz .
RUN tar xzvf telegraf-1.15.3_linux_amd64.tar.gz && rm -rf telegraf-1.15.3_linux_amd64.tar.gz
COPY telegraf.conf /telegraf-1.15.3/etc/telegraf/

RUN chmod +x ./telegraf-1.15.3/usr/bin/telegraf
COPY ./run.sh .

ENTRYPOINT sh run.sh
