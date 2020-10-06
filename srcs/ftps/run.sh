adduser -D admin
echo "admin:pw_admin" | chpasswd
mkdir usr/toto
echo "coucou" > usr/toto/test.txt
chown nobody:nogroup /usr/toto
chmod 777 /home/admin
openrc default
rc-service vsftpd start
tail -f /dev/null
