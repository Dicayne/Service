mkdir usr/toto
echo "coucou" > usr/toto/test.txt
chown nobody:nogroup /usr/toto
openrc default
rc-service vsftpd start
tail -f /dev/null