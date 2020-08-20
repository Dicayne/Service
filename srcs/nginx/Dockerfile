# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vmoreau <vmoreau@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/05/20 14:50:11 by vmoreau           #+#    #+#              #
#    Updated: 2020/05/25 18:16:19 by vmoreau          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM alpine:latest

RUN apk update
RUN apk add nginx openrc openssl openssh
RUN mv /etc/nginx/nginx.conf /etc/nginx/nginx.conf.orig

COPY ./nginx.conf /etc/nginx/
COPY ./index.html .
COPY ./run.sh .
COPY ./default.conf /etc/nginx/conf.d/
COPY ./sshd_config /etc/ssh/

EXPOSE 80
EXPOSE 443
EXPOSE 30022
ENTRYPOINT sh run.sh