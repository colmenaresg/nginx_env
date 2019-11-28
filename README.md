# nginx_env
Nginx docker image example using environment variables 

$ docker build -t basic-docker-nginx .

$ docker run -d -p 8080:80 -e "ENV=PROD" basic-docker-nginx
