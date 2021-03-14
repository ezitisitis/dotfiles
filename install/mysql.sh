#!/bin/bash

echo "Installing MySQL 5.7 through Docker"

cd ~/devops
git clone git@github.com:ezitisitis/docker-compose-mysql5.7.git mysql57
cd mysql57
bash install.sh
