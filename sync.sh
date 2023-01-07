#!/bin/bash

case "$1" in
"authors") echo "update authors";;
"channels") echo "update channels";;
"podcasts") echo "update podcasts"
            exit 125;;
"streamers") echo "update streamers";;
esac

#REQ=$(curl -X POST -H "Content-Type: application/json" -d @./authors.json http://localhost:3000/v1/author/sync-resource)
#
#echo "Authors stored $REQ"
