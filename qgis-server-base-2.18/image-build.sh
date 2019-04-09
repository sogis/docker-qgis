#!/bin/bash

githash=$1
if [ "x$githash" = "x" ]; then
    githash='localbuild'
fi

buildident=$2
if [ "x$buildident" = "x" ]; then
    buildident='localbuild'
fi

build_timestamp=$(date '+%Y-%m-%d_%H:%M:%S')

docker build \
    -t sogis/qgis-server-base:2.18 \
    --label qgis-server-base.created=$build_timestamp --label qgis-server-base.git_commit=$githash --label qgis-server-base.travis_build=$buildident \
    .