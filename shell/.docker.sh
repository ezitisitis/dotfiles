#!/bin/bash

# Start/stop nginx and stop/start dnsmasq
function docker-env() {

  ACTION=${1:=start}

  if [ $ACTION = 'start' ]
  then
    sudo brew services stop nginx
    sudo brew services start dnsmasq
    open -a Docker
  elif [ $ACTION = 'stop' ]
  then
    pkill Docker
    sudo brew services stop dnsmasq
    sudo brew services start nginx
  else
    echo 'Are you sure that you know what are you doing?'
  fi
}

function docker-ip() {
  CONTAINER=${1:=error}

  if [ $CONTAINER = 'error' ]
  then
    echo 'Please specify container name or id'
  else
    docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' $CONTAINER
  fi
}

function docker-auth() {
  HTPASSWD_USERNAME=${1:=user}
  HTPASSWD_PASSWORD=${2:=password}

  echo $(htpasswd -nb $HTPASSWD_USERNAME $HTPASSWD_PASSWORD) | sed -e s/\\$/\\$\\$/g
}
