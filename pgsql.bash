#!/bin/bash

# Author: Muhammad Ilham

docker run -d \
    --name postgres \
    -e POSTGRES_PASSWORD=verysecretpassword \
    -e PGDATA=/var/lib/postgresql/data/pgdata \
    -p 15432:5432 \
    -v $PWD/xdata/pgsql:/var/lib/postgresql/data \
    postgres
