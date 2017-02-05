#!/bin/bash

cd /etc

## Test if the local host is Arch-based
if [ -d /etc/pacman.d ]
then
  sudo pacman -Syu
fi

## Test if the local host is Debian-based
if [ -d /etc/apt ]
then
  sudo apt-get update && sudo apt-get dist-upgrade -y
fi
