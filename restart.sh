if [ $# -eq 1 ] && [ $1 = 'clean' ]
then
    sh reset.sh clean
    sh setup.sh clean
else
    echo "\n\033[1;34mRESET:\033[0m"
    sh reset.sh
    echo "\033[1;34mSETUP:\033[0m"
    sh setup.sh
fi