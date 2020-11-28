#!/bin/bash

# 
function what-used() {
    
    URL=${1:=error}

    if [ ! $URL = 'error']
    then
        docker run --rm wappalyzer/cli $URL
    else
        echo "url is not specified"
    fi
}
