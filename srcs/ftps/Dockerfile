# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vmoreau <vmoreau@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/09/22 13:17:10 by vmoreau           #+#    #+#              #
#    Updated: 2020/09/22 16:14:33 by vmoreau          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM alpine:latest

RUN apk update
RUN apk add vsftpd openrc openssl

RUN openssl req -x509 -nodes -days 365 -newkey rsa:1024 -keyout /etc/vsftpd/vsftpd.pem -out /etc/vsftpd/vsftpd.pem -subj '/CN=services'

COPY ./vsftpd.conf /etc/vsftpd/
COPY ./run.sh .
ENTRYPOINT  sh /run.sh