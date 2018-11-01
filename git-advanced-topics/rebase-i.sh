#!/bin/bash

set -e

# e.g. GIT_SEQUENCE=pffrr

vimpager --force-passthrough $1

for s in `echo "$GIT_SEQUENCE" | fold -w1`; do
    sed -i -e "0,/^pick/s//$s/" $1
done

vimpager --force-passthrough  $1