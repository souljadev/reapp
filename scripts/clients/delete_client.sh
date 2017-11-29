#!/bin/bash
#
# API="${API_ORIGIN:-http://localhost:4741}"
# URL_PATH="/clients/${ID}"
# curl "${API}${URL_PATH}" \
#   --include \
#   --request DELETE \
#   --header "Content-Type:application/json"
#
#
# curl --include --request DELETE "http://localhost:4741/clients/${ID}"
curl --include --request DELETE "http://localhost:4741/clients/${ID}" \
--header "Authorization: Token token=BAhJIiUzMWVmNjdlODU0ZjliZThjOTcwOTNjYWIyM2E1ZjE4NgY6BkVG--5ad8ceb93090381cc0e7395c57ed070764541639" \
--header "Content-Type: application/json" \


echo
