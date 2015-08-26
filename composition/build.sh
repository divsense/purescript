#/usr/bin/env bash

docker-compose run --rm purescript cd "${ALIEN_INPUT}";pulp build -O -o "${ALIEN_OUTPUT}" -t out

