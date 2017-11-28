#!/bin/bash

curl --include --request PATCH "http://localhost:4741/clients/${ID}" \
  --header "Content-Type: application/json" \
  --data '{
    "client": {
      "first_name": "'"${FIRST}"'",
      "last_name": "'"${LAST}"'",
      "email": "'"${EMAIL}"'"
    }
  }'
# curl --include --request DELETE "http://localhost:4741/patients/${ID}"

echo
