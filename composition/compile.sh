#/usr/bin/env bash

docker-compose run --rm purescript psc "${ALIEN_INPUT}" --output="${ALIEN_OUTPUT}"

