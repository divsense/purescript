#/usr/bin/env bash

cat - | jq ".main"

#docker-compose run purescript psc "${SRC}/${NAME}.purs" --output="$DEST" 
