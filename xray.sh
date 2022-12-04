#!/bin/sh
if [ ! -f UUID ]; then
  UUID="8bac9d89-28c3-43e9-9a22-3e72a91ec2ad"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

