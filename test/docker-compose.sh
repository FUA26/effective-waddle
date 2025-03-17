#!/bin/bash

# Pilih environment (dev atau prod)
if [ "$1" == "prod" ]; then
    docker compose -f docker-compose.db.yml -f docker-compose.keycloak.yml -f docker-compose.prod.yml up -d
else
    docker compose -f docker-compose.db.yml -f docker-compose.keycloak.yml -f docker-compose.override.yml up -d
fi
