#!/usr/bin/env bash

BASEDIR=$(dirname "$0") && . "${BASEDIR}/../env.sh"


if [ ! $# -eq 1 ]
then
  echo "$0 indices"
  exit 1
fi

RESOURCE="/$1/_search?pretty"
URL="${ES_SCHEME}://${ES_HOST}:${ES_PORT}${RESOURCE}"

generate_post_data()
{
  cat <<EOF
{
  "from": 0,
  "size": 10,
  "query":{
    "match_all": {}
  }
}
EOF
}

curl -s -X GET "$URL" \
  -H "accept: */*" \
  -H "Content-Type: application/json" \
  -d "$(generate_post_data)"
