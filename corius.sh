#!/bin/bash


npm-register.sh &&
export PATH=/opt/needlesslaser/node-v6.2.0-linux-x64:${PATH}:${PWD}/node_modules/.bin &&
npm install gulp jspm yo generator-corius &&
yo corius &&
true