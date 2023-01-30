#!/bin/bash

echo "Starting script..."

if grep -q 'enableBackdrops:function(){return _}' /linktojellyfin-web/main.jellyfin.bundle.js; then
  echo "Line already replaced, exiting script"
  exit 1
else
  sed -i 's/enableBackdrops:function(){return P}/enableBackdrops:function(){return _}/' /linktojellyfin-web/main.jellyfin.bundle.js
fi

if [ $? -eq 0 ]
then
  echo "Replacement completed successfully"
else
  echo "Replacement failed"
fi
