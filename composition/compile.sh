#/usr/bin/env bash

docker-compose run --rm purescript psc "${ALIEN_INPUT}/${CMD_PARAM}" --output="${ALIEN_OUTPUT}/out"

