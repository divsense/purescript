#/usr/bin/env bash

[ ! -f Dockerfile ] && exit(1)

docker build -t divsense_purescript .

