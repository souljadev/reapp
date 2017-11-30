#!/bin/bash

curl --include --request GET "http://localhost:4741/clients" \
  --header "Authorization: Token token=BAhJIiUyNGRlN2M1NGQ1Zjg3ZDFkMmVhNDljOGQ3NmIzMzZjMwY6BkVG--31a397c385d1198515568506eb3fe487a2683798" \
  --header "Content-Type: application/json" \
  --data '{
      "client": {
        "first_name": "'"${FIRST}"'",
        "last_name": "'"${LAST}"'",
        "email": "'"${EMAIL}"'"
      }
  }'

echo
