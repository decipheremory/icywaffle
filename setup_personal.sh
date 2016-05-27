#!/bin/bash

NAME="${1}" &&
ORIGIN_URL="${2}" &&
mkdir "${HOME}/workspace/${NAME}" &&
git -C "${HOME}/workspace/${NAME}" init &&
git -C "${HOME}/workspace/${NAME}" remote add origin "${ORIGIN_URL}" &&
git -C "${HOME}/workspace/${NAME}" pull origin develop &&
true