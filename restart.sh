if [ $# -eq 1 ] && [ $1 = 'clean' ]
then
    sh reset.sh clean
    sh setup.sh clean
elif [ $# -eq 0 ]
then
    echo "\n\033[1;34mRESET:\033[0m"
    sh reset.sh
    echo "\033[1;34mSETUP:\033[0m"
    sh setup.sh
else
    echo "\n\033[5;31m        ERROR\033[0m"
    echo "\033[4;31m\"clean\" is the unique option\n\033[0m"
fi