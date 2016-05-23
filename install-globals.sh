#!/bin/bash

install-node.sh 6.2.0 &&
export PATH=/opt/needlesslaser/node-v6.2.0-linux-x64:${PATH} &&
npm install -g gulp jspm yo &&
true