## Gogs Application with Postgres 

## Build manually

docker pull sameersbn/postgresql:9.4-4
docker run -p 5432:5432 -e 'DB_USER=admin' -e 'DB_PASS=admin' -e 'DB_NAME=gogs' --name postgres-it ${IMAGE}

## Build the gogs container
docker build -t gogs:gogs .

## Run gogs container and link to the postgres database 
docker run -p 5432:5432 -e 'DB_USER=admin' -e 'DB_PASS=admin' -e 'DB_NAME=gogs' --name postgres -it ${IMAGE}

## Alternatively run docker compose 

docker-compose up 
