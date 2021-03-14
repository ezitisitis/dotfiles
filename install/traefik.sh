#!/bin/bash

echo "Cloning Traefik repository"
cd ~/devops
git clone https://github.com/ezitisitis/docker-compose-traefik-v2.git ~/devops/traefik

echo "Setting up Traefik"
cd ~/devops/traefik
cp traefik.yml.example traefik.yml

docker-compose up -d
