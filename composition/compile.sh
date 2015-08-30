#/usr/bin/env bash

docker run --rm -w "${ALIEN_INPUT}" --volumes-from=initialcomposition_exchangevolume_1 divsense_purescript pulp build -O -t "${ALIEN_OUTPUT}/out"

