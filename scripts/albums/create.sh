#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/albums"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "album": {
      "artist_name": "'"${ARTIST}"'",
      "album_name": "'"${ALBUM}"'",
      "user_id": "'"${USER}"'"
    }
  }'
echo
