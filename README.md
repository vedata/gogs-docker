## Gogs Application with Postgres 

This repository provides a gogs application based on postgres. 

## Requirements

* docker 1.11+


## Build manually

   1. git clone https://github.com/vedata/gogs-docker.git
   2. cd gogs-docker
   3. docker pull sameersbn/postgresql:9.4-4
   4. docker run -p 5432:5432 -e 'DB_USER=admin' -e 'DB_PASS=admin' -e 'DB_NAME=gogs' --name postgres-it ${IMAGE}
   5. docker build -t gogs:gogs .
   6. docker run -p 5432:5432 -e 'DB_USER=admin' -e 'DB_PASS=admin' -e 'DB_NAME=gogs' --name postgres -it ${IMAGE}


## Alternatively run docker compose 

   1. git clone https://github.com/vedata/gogs-docker.git
   2. docker-compose up
