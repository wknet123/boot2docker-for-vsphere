#!/bin/bash
set -e

# clear the MSYS MOTD
clear

cd "$(dirname "$BASH_SOURCE")"

ISO="$BOOT2DOCKER_DIR/.boot2docker/boot2docker.iso"

if [ ! -e "$ISO" ]; then
	echo 'copying initial boot2docker.iso (run "boot2docker.exe download" to update)'
	mkdir -p "$(dirname "$ISO")"
	cp ./boot2docker.iso "$ISO"
fi

echo 'initializing...'
./boot2docker-cli.exe init
echo

echo 'starting...'
./boot2docker-cli.exe start
echo

echo 'connecting...'
./boot2docker-cli.exe ssh
echo

echo
echo '[Press any key to exit]'
read
