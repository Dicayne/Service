# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: user42 <user42@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/09/10 17:11:31 by vmoreau           #+#    #+#              #
#    Updated: 2020/10/01 17:44:12 by user42           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM alpine:latest

RUN apk update \
&& apk add --no-cache php7 php7-fpm php7-opcache php7-gd php7-mysqli \
php7-zlib php7-curl php7-mbstring php7-json php7-session

COPY phpMyAdmin-5.0.2-all-languages.tar.gz .
RUN tar -zxvf phpMyAdmin-5.0.2-all-languages.tar.gz && rm phpMyAdmin-5.0.2-all-languages.tar.gz
RUN mv phpMyAdmin-5.0.2-all-languages /www
COPY config.inc.php /www/

EXPOSE 5000
COPY run.sh .
ENTRYPOINT sh /run.sh