#!/usr/bin/env bash

BASEDIR=$(dirname "$0") && . "${BASEDIR}/env.sh"


RESOURCE=""
URL="${ES_SCHEME}://${ES_HOST}:${ES_PORT}${RESOURCE}"

curl -X GET "${URL}"
