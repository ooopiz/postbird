#!/usr/bin/env bash

set -e

#export ES_SCHEME="http"
#export ES_HOST="localhost"
#export ES_PORT="9200"

if [ -z "${ES_SCHEME}" ]
then
  export ES_SCHEME="http"
fi

if [ -z "${ES_HOST}" ]
then
  export ES_HOST="localhost"
fi

if [ -z "${ES_PORT}" ]
then
  export ES_PORT="9200"
fi
