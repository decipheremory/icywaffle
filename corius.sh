#!/bin/bash


npm-register.sh &&
export PATH=/opt/needlesslaser/node-v6.2.0-linux-x64/bin:${PATH} &&
# install-globals.sh &&
npm install generator-corius &&
yo corius &&
true