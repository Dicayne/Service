# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vmoreau <vmoreau@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/09/10 18:18:30 by vmoreau           #+#    #+#              #
#    Updated: 2020/09/18 18:38:03 by vmoreau          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM alpine:latest

RUN apk update
RUN apk add mariadb mariadb-client openrc

COPY ./db.sql .
COPY ./run.sh .
COPY mariadb-server.cnf etc/my.cnf.d/

EXPOSE 3306
ENTRYPOINT sh /run.sh