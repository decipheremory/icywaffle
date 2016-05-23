#!/bin/bash

sudo dnf install --assumeyes nginx &&
sudo rm --recursive --force /etc/nginx &&
cd $(mktemp -d) &&
git init &&
git remote add origin ssh://git@gitlab.363-283.io:2252/emory.merryman/nginx-dev-infrastructure.git &&
git pull origin develop &&
sudo ln --symbolic --force ${PWD} /etc/nginx &&
sudo nginx &&
true