#!/bin/bash
set -e

echo "📦 GitHub Event: $GITHUB_EVENT_NAME"
echo "🔁 Sending payload to: $BACKEND_URL/"

curl -X POST "$BACKEND_URL/" \
  -H "X-Secret-Token: $SECRET_TOKEN" \
  -H "X-GitHub-Event: $GITHUB_EVENT_NAME" \
  -H "Content-Type: application/json" \
  --data @"$GITHUB_EVENT_PATH"

echo "✅ Webhook sent"