# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: user42 <user42@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/05/20 14:50:11 by vmoreau           #+#    #+#              #
#    Updated: 2020/10/06 12:12:35 by user42           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM alpine:latest

RUN apk update
RUN apk add nginx openrc openssl openssh
RUN mv /etc/nginx/nginx.conf /etc/nginx/nginx.conf.orig

COPY ./nginx.conf /etc/nginx/
COPY ./html /www
COPY ./run.sh .
COPY ./sshd_config /etc/ssh/
COPY reload.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/reload.sh
RUN mkdir -p /etc/nginx/ssl
RUN openssl req -x509 -out /etc/nginx/ssl/services.crt -keyout /etc/nginx/ssl/services.key -newkey rsa:2048 -nodes -sha256 -subj '/CN=services'
EXPOSE 80 443 22
ENTRYPOINT sh run.sh