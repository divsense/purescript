#/usr/bin/env bash

DATA=$( cat - | jq -rc "." )

if [ -z "$DATA" ]; then
	echo "[COMPILE] Error: Invalid data"
	exit 1
fi

NAME=$( echo "$DATA" | jq -rc ".name" )

if [ -z "$NAME" ]; then
	echo "[COMPILE] Error: no name spcified"
	exit 1
fi

docker-compose run purescript psc "${ALIEN_DATA_SRC}/${NAME}.purs" --output="$ALIEN_DATA_DEST"

