#!/bin/bash


set -eo pipefail


auth_file="$HOME/.composer/auth.json"
if [ -f "$auth_file" ]; then
# Read the existing auth.json file
auth_json=$(cat "$auth_file")


# Extract the existing http-basic object
http_basic=$(echo "$auth_json" | python3 -c 'import json, sys; data = json.load(sys.stdin); print(json.dumps(data.get("http-basic", {})))')

# Add/Update the Magento keys in the http-basic object
updated_http_basic=$(echo "$http_basic" | python3 -c 'import json, sys; data = json.load(sys.stdin); data["repo.magento.com"] = {"username": "0cc780d74390a157e0bd3c56bd992175", "password": "407b20cf6054058ab2cf75d08b837d98"}; print(json.dumps(data))')

# Update the auth.json file with the updated http-basic object
updated_auth_json=$(echo "$auth_json" | python3 -c 'import json, sys; data = json.load(sys.stdin); data["http-basic"] = json.loads(sys.argv[1]); print(json.dumps(data))' "$updated_http_basic")

# Write the updated auth.json file
echo "$updated_auth_json" > "$auth_file"

else
# Create a new auth.json file with the Magento keys
cat > "$auth_file" <<EOL
{
"http-basic": {
"repo.magento.com": {
"username": "0cc780d74390a157e0bd3c56bd992175",
"password": "407b20cf6054058ab2cf75d08b837d98"
}
}
}
EOL
fi