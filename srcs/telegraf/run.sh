chown root:root /var/run/docker.sock
chmod 666 /var/run/docker.sock
cd /telegraf-1.15.3/usr/bin && ./telegraf --config "/telegraf-1.15.3/etc/telegraf/telegraf.conf"