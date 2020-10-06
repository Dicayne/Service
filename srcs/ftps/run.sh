adduser -D admin
echo "admin:pw_admin" | chpasswd
echo "root:pw_root" | chpasswd
echo "This is a transfer test for ftps service" > home/admin/test.txt
chmod 777 /home/admin
openrc default
rc-service vsftpd start
tail -f /dev/null