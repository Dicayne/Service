docker build -t my-nginx .
docker run -p 80:80 -p 443:443 -p 22:22 -it my-nginx