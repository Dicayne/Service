eval $(minikube docker-env)
kubectl delete deployments --all
kubectl delete service --all
kubectl delete namespaces metallb-system
docker rmi -f my-nginx:latest alpine:latest
echo "Clean SSH done"
sh srcs/sh/cleanssh.sh