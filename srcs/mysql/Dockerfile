# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vmoreau <vmoreau@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/09/10 18:18:30 by vmoreau           #+#    #+#              #
#    Updated: 2020/09/21 12:52:41 by vmoreau          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM alpine:latest

RUN apk update
RUN apk add mariadb mariadb-client openrc

COPY ./db.sql .
COPY ./wordpress.sql .
COPY ./run.sh .
COPY ./my.cnf /etc/

EXPOSE 3306
ENTRYPOINT sh /run.sh