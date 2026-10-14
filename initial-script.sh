#!/bin/bash
set -e
sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get install -y openjdk-17-jdk git curl

if ! sudo getent group quickbite > /dev/null; then
	sudo groupadd -r quickbite
fi

if ! sudo id -u quickbite > /dev/null 2>&1; then
	sudo useradd -r -M -g quickbite -s /bin/false quickbite
fi
