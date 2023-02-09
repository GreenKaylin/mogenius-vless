#!/bin/sh
if [ ! -f UUID ]; then
  UUID="5dcbeb70-8e02-49a9-a88f-100c3bd53e35"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

