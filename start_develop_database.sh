#!/bin/bash
PORT=12001
NAME=skilltracker_develop_database

docker start $NAME || docker run \
  -e POSTGRES_PASSWORD=io9Shokeashahgohzoo0zeeCeer5el8geechirai \
  -e POSTGRES_USER=app \
  -e POSTGRES_DB=app \
  -v ${NAME}_volume:/var/lib/postgresql/data \
  -p $PORT:5432 \
  -d \
  --restart unless-stopped \
  --name $NAME \
  postgres:13.2-alpine
