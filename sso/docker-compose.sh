#!/bin/bash



# Jalankan docker-compose dengan argumen yang diberikan oleh user
docker compose \
  -f docker-compose.db.yml \
  -f docker-compose.keycloak.yml \
  -f docker-compose.portainer.yml \
  -f docker-compose.proxy.yml \
  --env-file .env \
  "$@"
