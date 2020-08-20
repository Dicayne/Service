kubectl delete deployments --all
kubectl delete service --all
kubectl delete pod --all
kubectl delete ingress --all
docker rmi -f my-nginx alpine
sh srcs/sh/cleanssh.sh