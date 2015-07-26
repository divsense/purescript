#/usr/bin/env bash

DATA=$( cat - | jq -r "." )

if [ -z "$DATA" ]; then
	echo "[COMPILE] Error: Invalid data"
	exit 1
fi

NAME=$( echo "$DATA" | jq -r ".source" )

if [ -z "$NAME" ]; then
	echo "[COMPILE] Error: no source spcified"
	exit 1
fi

TARGET=$( echo "$DATA" | jq -r ".target" )

if [ -z "$TARGET" ]; then
	echo "[COMPILE] Error: no target spcified"
	exit 1
fi

docker-compose run purescript psc "${ALIEN_DATA_SRC}/${NAME}" --output="${ALIEN_DATA_DEST}/${TARGET}"

