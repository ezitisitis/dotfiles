#!/bin/bash

if brew ls --versions dnsmasq; then
    echo "[dnsmasq] is installed"
    echo "[dnsmasq] Documentation is located here: (http://www.thekelleys.org.uk/dnsmasq/doc.html)"
else
    echo "[dnsmasq] Start installation"
    echo "[dnsmasq] Documentation is located here: (http://www.thekelleys.org.uk/dnsmasq/doc.html)"
    brew install dnsmasq

    echo "[dnsmasq] Start configuration"
    echo "[dnsmasq] Add .localhost to point on 127.0.0.1"
    echo 'address=/.localhost/127.0.0.1' > $(brew --prefix)/etc/dnsmasq.conf
    
    if [[ "$OSTYPE" == "darwin"* ]]; then
        echo "[dnsmasq] Add macOS resolver"
        sudo mkdir -p /etc/resolver
        sudo bash -c 'echo "nameserver 127.0.0.1" > /etc/resolver/localhost'
    fi

    sudo brew services start dnsmasq
fi
