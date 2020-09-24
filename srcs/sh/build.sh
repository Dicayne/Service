if [ $clean = 'ok' ]
then
    docker build -t my-nginx srcs/nginx/
    docker build -t my-wordpress srcs/wordpress/
    docker build -t my-phpma srcs/phpmyadmin/
    docker build -t my-mysql srcs/mysql/
    docker build -t my-ftps srcs/ftps/
    docker build -t my-grafana srcs/grafana/
else
    docker build -t my-nginx srcs/nginx/ > /dev/null ; echo -n "\033[42m\033[32m..."
    docker build -t my-wordpress srcs/wordpress/ > /dev/null ; echo -n ...
    docker build -t my-phpma srcs/phpmyadmin/ > /dev/null ; echo -n ...
    docker build -t my-mysql srcs/mysql/ > /dev/null ; echo -n ...
    docker build -t my-ftps srcs/ftps/ > /dev/null ; echo -n ...
    docker build -t my-grafana srcs/grafana/ > /dev/null ; echo "...\033[0m \033[1;32mDone ✔\033[0m\n"
fi