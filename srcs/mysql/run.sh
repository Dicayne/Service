openrc default
rc-service mariadb setup
rc-service mariadb start
mysql -u root < db.sql
tail -f /dev/null