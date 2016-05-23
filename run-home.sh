#!/bin/bash

cd $(mktemp -d) &&
git init &&
git remote add origin ssh://git@gitlab.363-283.io:2252/emory.merryman/home-web-ui.git &&
git pull origin develop &&
sudo npm install -g npm jspm gulp yo &&
npm install &&
jspm install &&
gulp &&
true