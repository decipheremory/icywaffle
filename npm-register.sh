#!/bin/bash

install-node.sh 6.2.0 &&
export PATH=/opt/needlesslaser/node-v6.2.0-linux-x64/bin:${PATH} &&
npm set registry https://npm.363-283.io &&
npm set cafile /opt/needlesslaser/private/ca.crt &&
npm config set strict-ssl false 
source /opt/needlesslaser/private/ldap.properties &&
echo -e "${LDAP_USERNAME}\n${LDAP_PASSWORD}\n${LDAP_EMAIL}" | npm adduser --registry https://npm.363-283.io &&
true