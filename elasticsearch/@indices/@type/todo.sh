#!/usr/bin/env bash

generate_post_data()
{
  cat <<EOF
{
  "first_name" : "Huang",
  "last_name" : "Ricky",
  "age" : 25,
  "about" : "I love to go rock climbing",
  "interests": [ "sports", "music" ],
  "address": "taipei"
}
EOF
}

curl -s -X POST "http://localhost:9200/test-index/employee/4" \
  -H "accept: */*" -H "Content-Type: application/json" \
  -d "$(generate_post_data)"
