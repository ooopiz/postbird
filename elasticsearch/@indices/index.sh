#!/usr/bin/env bash

BASEDIR=$(dirname "$0") && . "${BASEDIR}/../env.sh"


if [ ! $# -eq 2 ]
then
  echo "$0 <method> <indices>"
  echo "method: [GET, PUT, DELETE]"
  exit 1
fi

run()
{
  RESOURCE="/$2?pretty"
  URL="${ES_SCHEME}://${ES_HOST}:${ES_PORT}${RESOURCE}"
  curl -X $1 "$URL"
}

case $1 in
  GET|PUT|DELETE)
    run $1 $2
    ;;
  *)
    echo "method: [GET, PUT, DELETE]"
    ;;
esac
