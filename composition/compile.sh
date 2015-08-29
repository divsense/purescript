#/usr/bin/env bash

docker run --rm -w "${ALIEN_INPUT}" divsense_purescript pulp build -O -o "${ALIEN_OUTPUT}" -t out

