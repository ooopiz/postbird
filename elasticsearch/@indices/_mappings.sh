#!/usr/bin/env bash

BASEDIR=$(dirname "$0") && . "${BASEDIR}/../env.sh"


if [ ! $# -eq 1 ]
then
  echo "$0 indices"
  exit 1
fi

RESOURCE="/$1/_mappings?pretty"
URL="${ES_SCHEME}://${ES_HOST}:${ES_PORT}${RESOURCE}"

curl -s -X GET "$URL"
