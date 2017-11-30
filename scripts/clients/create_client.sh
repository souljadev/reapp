#!/bin/bash

curl --include --request POST "http://localhost:4741/clients" \
  --header "Authorization: Token token=BAhJIiUwYjJkYjQ1YTY0YTVlMWIyNDBlN2JlZjhlODk4ZjMzNwY6BkVG--f2ce2be3013475f3ae2f7e2d516bb005400ec3c7" \
  --header "Content-Type: application/json" \
  --data '{
      "client": {
        "first_name": "'"${FIRST}"'",
        "last_name": "'"${LAST}"'",
        "email": "'"${EMAIL}"'"
      }
  }'

echo
