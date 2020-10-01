if [ $# -eq 1 ] && [ $1 = 'clean' ]
then
    eval $(minikube docker-env)
    kubectl delete deployments --all
    kubectl delete service --all
    kubectl delete namespaces metallb-system
    kubectl delete pvc mysql-pv-claim
    kubectl delete pv mysql-pv-volume
    docker rmi -f my-nginx alpine my-wordpress my-phpma my-mysql my-ftps
    rm /home/user42/.ssh/known_hosts
    touch /home/user42/.ssh/known_hosts
    minikube stop
    minikube delete --all
    echo "\033[34mReset ➔\033[0m \033[1;32mDone ✔\033[0m\n"
elif [ $# -eq 0 ]
then
    eval $(minikube docker-env) > /dev/null
    kubectl delete deployments --all > /dev/null 
        echo "\n\033[34mDelete Deployment ➔\033[0m \033[1;32mDone ✔\033[0m\n" 
    kubectl delete service --all > /dev/null 
        echo "\033[34mDelete Services ➔\033[0m \033[1;32mDone ✔\033[0m\n"
    kubectl delete namespaces metallb-system > /dev/null 
        echo "\033[34mDelete Metal LB ➔\033[0m \033[1;32mDone ✔\033[0m\n"
    kubectl delete pvc mysql-pv-claim > /dev/null 
        echo "\033[34mDelete MYSQL Persistant Volume Claim ➔\033[0m \033[1;32mDone ✔\033[0m\n"
    kubectl delete pv mysql-pv-volume > /dev/null 
        echo "\033[34mDelete MYSQL Persistant Volume ➔\033[0m \033[1;32mDone ✔\033[0m\n"
    docker rmi -f my-nginx alpine my-wordpress my-phpma my-mysql my-ftps my-grafana> /dev/null 
        echo "\033[34mDelete Docker Images ➔\033[0m \033[1;32mDone ✔\033[0m\n"
    rm /home/user42/.ssh/known_hosts > /dev/null 
    touch /home/user42/.ssh/known_hosts > /dev/null 
        echo "\033[34mClean SSH ➔\033[0m \033[1;32mDone ✔\033[0m\n"
    minikube stop > /dev/null
        echo "\033[34mStop Minikube ➔\033[0m \033[1;32mDone ✔\033[0m\n"
    minikube delete --all > /dev/null
        echo "\033[34mReset Minikube ➔\033[0m \033[1;32mDone ✔\033[0m\n"
    echo "\033[34mReset ➔\033[0m \033[1;32mDone ✔\033[0m\n"
else
    echo "\n\033[5;31m        ERROR\033[0m"
    echo "\033[4;31m\"clean\" is the unique option\n\033[0m"
fi