#!/bin/bash

curl --include --request POST "http://localhost:4741/clients" \
  --header "Authorization: Token token=BAhJIiUzMWVmNjdlODU0ZjliZThjOTcwOTNjYWIyM2E1ZjE4NgY6BkVG--5ad8ceb93090381cc0e7395c57ed070764541639" \
  --header "Content-Type: application/json" \
  --data '{
      "client": {
        "first_name": "'"${FIRST}"'",
        "last_name": "'"${LAST}"'",
        "email": "'"${EMAIL}"'"
      }
  }'

echo
