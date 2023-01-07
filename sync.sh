#!/bin/bash

case "$1" in
"authors")
  echo "Update authors"
  REQ=$(curl -X POST -H "Content-Type: application/json" -d @./authors.json ${API_HOST}/author/sync-resource)
  echo "Authors stored: $REQ"
  ;;
"channels")
  echo "Update channels"
  REQ=$(curl -X POST -H "Content-Type: application/json" -d @./channels.json ${API_HOST}/channel/sync-resource)
  echo "Channels stored: $REQ"
  ;;
"podcasts")
  echo "Update podcasts"
  REQ=$(curl -X POST -H "Content-Type: application/json" -d @./podcasts.json ${API_HOST}/show/sync-resource)
  echo "Podcasts stored: $REQ"
  ;;
"streamers")
  echo "Update streamers"
  REQ=$(curl -X POST -H "Content-Type: application/json" -d @./streamers.json ${API_HOST}/streamer/sync-resource)
  echo "Streamers stored: $REQ"
  ;;
esac
