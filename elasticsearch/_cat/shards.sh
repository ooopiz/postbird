#!/usr/bin/env bash

BASEDIR=$(dirname "$0") && . "${BASEDIR}/../env.sh"


RESOURCE="/_cat/shards?v"
URL="${ES_SCHEME}://${ES_HOST}:${ES_PORT}${RESOURCE}"

curl -X GET "${URL}"
