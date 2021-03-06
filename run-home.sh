#!/bin/bash

cd $(mktemp -d) &&
git init &&
git remote add origin ssh://git@gitlab.363-283.io:2252/emory.merryman/home-web-ui.git &&
git pull origin develop &&
install-globals.sh &&
export PATH=/opt/needlesslaser/node-v6.2.0-linux-x64/bin:${PATH} &&
npm-register.sh &&
npm install &&
jspm install &&
gulp &&
true