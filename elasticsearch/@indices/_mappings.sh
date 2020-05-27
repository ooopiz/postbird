#!/usr/bin/env bash

BASEDIR=$(dirname "$0") && . "${BASEDIR}/../env.sh"


if [ ! $# -eq 1 ]
then
  echo "$0 indices"
  exit 1
fi

#
# List types in this indics
#

RESOURCE="/$1/_mappings?pretty"
#RESOURCE="/$1/_mapping?pretty"
URL="${ES_SCHEME}://${ES_HOST}:${ES_PORT}${RESOURCE}"

curl -X GET "$URL"
