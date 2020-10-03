if [ $# -eq 1 ] && [ $1 = 'clean' ]
then
    clean="ok"
    export clean
    minikube start --driver=docker
    minikube addons enable metallb
    minikube addons enable metrics-server
    eval $(minikube docker-env)

    #Docker Images Building"
    sh srcs/sh/build.sh

    #Kubernetes Create Deploy
    sh srcs/sh/kubcreate.sh
elif [ $# -eq 0 ]
then
    clean="no"
    export clean
    echo "\033[4;33mLaunching Minikube:\033[0m\n"
    minikube start --driver=docker > /dev/null ; echo -n "\033[42m\033[32m..."
    minikube addons enable metallb > /dev/null ; echo -n ...
    minikube addons enable metrics-server > /dev/null ; echo -n ...
    eval $(minikube docker-env) ; echo "...\033[0m\033[1;32m Done ✔\033[0m\n"

    #Docker Images Building"
    echo "\033[4;33mBuild Docker Images:\033[0m\n"
    sh srcs/sh/build.sh

    #Kubernetes Create Deploy
    echo "\033[4;33mDeploy Kubernetes Deployment and Services:\033[0m\n"
    sh srcs/sh/kubcreate.sh
else
    echo "\n\033[5;31m        ERROR\033[0m"
    echo "\033[4;31m\"clean\" is the unique option\n\033[0m"

fi
