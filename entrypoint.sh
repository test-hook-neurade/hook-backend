#!/bin/bash
set -e

echo "📦 GitHub Event: $GITHUB_EVENT_NAME"
echo "🔁 Sending payload to: $BACKEND_URL/"

curl -X POST "$BACKEND_URL/" \
  -H "Authorization: Bearer $SECRET_TOKEN" \
  -H "Content-Type: application/json" \
  --data @"$GITHUB_EVENT_PATH"
