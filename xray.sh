#!/bin/sh
if [ ! -f UUID ]; then
  UUID="b2d65278-47e3-42ef-8c74-aa74af7c1a1f"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

