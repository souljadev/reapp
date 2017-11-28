#!/bin/bash

curl --include --request POST "http://localhost:4741/clients" \
  --header "Content-Type: application/json" \
  --data '{
      "client": {
        "first_name": "'"${FIRST}"'",
        "last_name": "'"${LAST}"'",
        "email": "'"${EMAIL}"'"
      }
  }'

echo
