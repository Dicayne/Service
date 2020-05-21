# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    run.sh                                             :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vmoreau <vmoreau@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/05/20 14:51:19 by vmoreau           #+#    #+#              #
#    Updated: 2020/05/21 11:56:13 by vmoreau          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

adduser -D -g 'www' www
mkdir /www
mkdir /run/nginx
chown -R www:www /var/lib/nginx
chown -R www:www /www
mv index.html www/
nginx
tail -f /dev/null