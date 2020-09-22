eval $(minikube docker-env)
kubectl delete deployments --all
kubectl delete service --all
kubectl delete namespaces metallb-system
kubectl delete pvc mysql-pv-claim
kubectl delete pv mysql-pv-volume
docker rmi -f my-nginx alpine my-wordpress my-phpma my-mysql my-ftps
rm /home/user42/.ssh/known_hosts
touch /home/user42/.ssh/known_hosts
echo "Clean SSH done"