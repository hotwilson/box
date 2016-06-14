#!/bin/bash -e

BODY=$(<./body.json)
VERSION_URL='https://apibeta.shippable.com/v2/versions'

echo "$BODY"

curl -v -H "Content-Type: application/json" -H "Authorization: apiToken $SHIPPABLE_API_TOKEN" -X POST "$VERSION_URL" -d "$BODY"
