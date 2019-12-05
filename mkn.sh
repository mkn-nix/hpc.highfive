#!/usr/bin/env bash

set -e

CWD="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

VERSION="master"
DIR="h"
GIT_URL="https://github.com/BlueBrain/HighFive"

HAS=1
[ ! -d "$CWD/$DIR" ] && HAS=0 && git clone --depth 5 $GIT_URL -b $VERSION $DIR --recursive
cd $DIR
(( $HAS == 1 )) && git pull --recurse-submodules origin $VERSION

exit 0
