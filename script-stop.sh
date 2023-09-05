#!/bin/bash

echo "====== Searching for servers ======"

# Searching for resources with tag "free-form.shutdown:true"
resources=$(oci search resource structured-search --query-text "query instance resources where (freeformTags.key = 'shutdown' && freeformTags.value = 'true')" --raw-output)

# Go through the list of resources and turn them off
for resource in $(echo "${resources}" | jq -r '.data.items[].identifier')
do
    echo "Stoping resource: ${resource}"
    oci compute instance action --action stop --instance-id ${resource}
done
