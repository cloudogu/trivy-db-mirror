#!/usr/bin/env bash
set -o errexit -o nounset -o pipefail

if [ "$#" -ne 3 ]; then
  echo "Usage: $0 <source_image> <destination_image> <retries>"
  exit 1
fi

SOURCE_IMAGE=$1
DESTINATION_IMAGE=$2
RETRIES=$3
COUNT=0

until skopeo copy "$SOURCE_IMAGE" "$DESTINATION_IMAGE" || [ $COUNT -ge $RETRIES ]; do
  COUNT=$((COUNT+1))
  echo "Retry $COUNT/$RETRIES for $SOURCE_IMAGE to $DESTINATION_IMAGE..."
  sleep 1
done

if [ $COUNT -ge $RETRIES ]; then
  echo "Failed to mirror $SOURCE_IMAGE after $RETRIES attempts."
  exit 1
fi

echo "Successfully mirrored $SOURCE_IMAGE to $DESTINATION_IMAGE."
