# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vmoreau <vmoreau@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/05/20 14:50:11 by vmoreau           #+#    #+#              #
#    Updated: 2020/05/20 15:30:35 by vmoreau          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM alpine:latest

RUN apk update
RUN apk add nginx openrc
RUN mv /etc/nginx/nginx.conf /etc/nginx/nginx.conf.orig

COPY ./nginx.conf /etc/nginx/
COPY ./index.html .
COPY ./run.sh .

EXPOSE 80
ENTRYPOINT sh run.sh