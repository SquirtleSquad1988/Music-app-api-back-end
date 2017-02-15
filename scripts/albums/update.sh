#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/albums/${ID}"
curl "${API}${URL_PATH}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --data '{
    "album": {
      "artist_name": "'"${ARTIST}"'",
      "album_name": "'"${ALBUM}"'"
    }
  }'

echo
