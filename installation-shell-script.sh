#!/bin/bash

## To run this script you have to, first of all, go to the folder where is it##
## for example, if it is in dowloands in a folder called installation-shell-script ##
## and supposing that you're at the home folder in your terminal ##
## cd Downloads/installation-shell-script/ ##
## ./installation-shell-script.sh ##

## Applications that will be installed ##

## VLC ##
## Node ##
## Yarn ##
## Docker ##
## Vim ##
## Gnome-tweaks ##

## To update and upgrade your system before continue ##

sudo apt update && sudo apt full-upgrade

## Linuxs based on debian versions less than 20.04 ##
## sudo apt-get update && sudo apt-get upgrade ##

## Install VLC ##

sudo apt install vlc

## Node ##

curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -

sudo apt install -y nodejs

## Install Yarn ##

curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -

echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

sudo apt update && sudo apt-get install yarn

## Graphic libraries ##

sudo apt-get install gcc-multilib lib32z1 lib32stdc++6

## Docker ##

sudo apt update

sudo apt-get install apt-transport-https ca-certificates curl gnupg lsb-release

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

echo \
  "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io

## The next commands will be just for only if you want to use Docker without sudo ##

sudo usermod -aG docker ${USER}

su - ${USER}

id -nG

## Vim ##

sudo apt update

sudo apt install vim

## Gnome-tweaks ##

sudo apt install gnome-tweaks

## To end up ##

sudo apt update && sudo apt full-upgrade

## Linuxs based on debian versions less than 20.04 ##
## sudo apt-get update && sudo apt-get upgrade ##