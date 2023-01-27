#!/usr/bin/env bash

echo "Upgrading Shardeum devops scripts"
git pull
echo "Upgrading docker images"
{
  docker pull registry.gitlab.com/shardeum/server:dev
} || {
  sudo docker pull registry.gitlab.com/shardeum/server:dev
}
{
  docker-compose -f docker-compose.yml down
} || {
  sudo docker-compose -f docker-compose.yml down
}
{
  docker-compose -f docker-compose.yml up -d
} || {
  sudo docker-compose -f docker-compose.yml up -d
}
