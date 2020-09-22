kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.3/manifests/namespace.yaml
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.3/manifests/metallb.yaml
kubectl create secret generic -n metallb-system memberlist --from-literal=secretkey="$(openssl rand -base64 128)"
kubectl apply -f srcs/configmap.yaml
kubectl apply -f srcs/nginx/nginx.yaml
kubectl apply -f srcs/wordpress/wordpress.yaml
kubectl apply -f srcs/phpmyadmin/phpmyadmin.yaml
kubectl apply -f srcs/mysql/mysql.yaml
kubectl apply -f srcs/ftps/ftps.yaml
echo "ready mtf"