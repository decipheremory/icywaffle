#!/bin/bash

ln --symbolic --force ${HOME}/bin ${HOME}/workspace/bin &&
setup_personal.sh frozenhurricane ssh://git@gitlab.363-283.io:2252/emory.merryman/frozenhurricane.git &&
true