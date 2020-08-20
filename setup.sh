minikube start --driver=virtualbox
minikube addons enable metallb
eval $(minikube docker-env)

#Docker Images Building"
echo "Build Docker Images ..."
sh srcs/sh/build.sh

#Kubernetes Create Deploy
sh srcs/sh/kubcreate.sh

#Kubernetes Expose Services
#sh srcs/sh/expose.sh

#Test
kubectl get ingress