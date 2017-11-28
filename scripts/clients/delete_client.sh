#!/bin/bash

# API="${API_ORIGIN:-http://localhost:4741}"
# URL_PATH="/ingredients/${ID}"
# curl "${API}${URL_PATH}" \
#   --include \
#   --request DELETE \
#   --header "Content-Type:application/json"


curl --include --request DELETE "http://localhost:4741/clients/${ID}"

echo
