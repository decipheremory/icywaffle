#!/bin/bash

VERSION="${@}" &&
if [ ! -d /opt/needlesslaser/node-v${VERSION}-linux-x64 ]
then
    sudo dnf install --assumeyes xz &&
    curl https://nodejs.org/dist/v${VERSION}/node-v${VERSION}-linux-x64.tar.xz | sudo tar -xJ -C /opt/needlesslaser &&
    true
fi &&
true