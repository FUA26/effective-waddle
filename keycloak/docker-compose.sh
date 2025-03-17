#!/bin/bash

if [ "$1" == "dev" ]; then
  docker compose -f docker-compose.base.yml \
                 -f docker-compose.db.yml \
                 -f docker-compose.keycloak.yml \
                 -f docker-compose.api.yml \
                 -f docker-compose.proxy.yml \
                 -f docker-compose.override.yml up -d
elif [ "$1" == "prod" ]; then
  docker compose -f docker-compose.base.yml \
                 -f docker-compose.db.yml \
                 -f docker-compose.keycloak.yml \
                 -f docker-compose.api.yml \
                 -f docker-compose.proxy.yml \
                 -f docker-compose.prod.yml up -d
else
  echo "Usage: ./docker-compose.sh [dev|prod]"
fi
