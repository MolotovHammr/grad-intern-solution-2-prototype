#!/bin/bash

set -eo pipefail

auth_file="$HOME/.composer/auth.json"
if [ -f "$auth_file" ]; then
    # Read the existing auth.json file
    auth_json=$(cat "$auth_file")

    # Extract the existing http-basic object
    http_basic=$(echo "$auth_json" | jq '.["http-basic"]')

    # Add/Update the Magento keys in the http-basic object
    updated_http_basic=$(echo "$http_basic" | jq --arg public_key 0cc780d74390a157e0bd3c56bd992175 --arg private_key 407b20cf6054058ab2cf75d08b837d98 '.["repo.magento.com"] = { "username": $public_key, "password": $private_key }')

    # Update the auth.json file with the updated http-basic object
    updated_auth_json=$(echo "$auth_json" | jq --argjson updated_http_basic "$updated_http_basic" '.["http-basic"] = $updated_http_basic')

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
