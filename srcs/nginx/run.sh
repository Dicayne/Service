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
adduser -D victor
echo "victor:pwd" | chpasswd
echo "root:pwd" | chpasswd
cd etc/nginx
openssl req -x509 -out localhost.crt -keyout localhost.key \
	-newkey rsa:2048 -nodes -sha256 -subj '/CN=localhost'
ssh-keygen -A
rc-update add sshd
rc-status
touch /run/openrc/softlevel
/etc/init.d/sshd restart
nginx
tail -f /dev/null
