#!/bin/bash

# Start/stop nginx and stop/start dnsmasq
function docker-proxy() {

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
