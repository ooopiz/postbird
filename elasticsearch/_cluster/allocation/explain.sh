#!/usr/bin/env bash

BASEDIR=$(dirname "$0")
. "${BASEDIR}/../../env.sh"


RESOURCE="/_cluster/allocation/explain?pretty"
URL="${ES_SCHEME}://${ES_HOST}:${ES_PORT}${RESOURCE}"

curl -X GET "${URL}"
