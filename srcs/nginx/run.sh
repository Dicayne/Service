# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    run.sh                                             :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vmoreau <vmoreau@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/05/20 14:51:19 by vmoreau           #+#    #+#              #
#    Updated: 2020/05/25 17:48:26 by vmoreau          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

adduser -D -g 'www' www
mkdir /www
mkdir /run/nginx
chown -R www:www /var/lib/nginx
chown -R www:www /www
mv index.html www/
adduser -D admin
echo "admin:pwd" | chpasswd
echo "root:pwd" | chpasswd
ssh-keygen -A
rc-update add sshd
rc-status
touch /run/openrc/softlevel
/etc/init.d/sshd restart
nginx -g 'daemon off;'
tail -f /dev/null
