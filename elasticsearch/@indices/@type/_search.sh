#!/usr/bin/env bash

BASEDIR=$(dirname "$0") && . "${BASEDIR}/../../env.sh"


if [ ! $# -eq 2 ]
then
  echo "$0 <indices> <type>"
  exit 1
fi

RESOURCE="/$1/$2/_search?pretty"
URL="${ES_SCHEME}://${ES_HOST}:${ES_PORT}${RESOURCE}"

curl -X GET "$URL" \
  -H "accept: */*" \
  -H "Content-Type: application/json"
