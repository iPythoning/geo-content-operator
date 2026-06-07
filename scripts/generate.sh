#!/usr/bin/env bash
# Hosted mode: call the Paibao AI Operator engine (grounded in the client's dynamic
# knowledge base). Returns JSON { ok, topic, tier, drafts:[{locale,slug,title,excerpt,
# html, markdown, jsonld}] }.
#
# Usage:
#   PAIBAO_LICENSE_KEY=... [PAIBAO_API=https://console.paibao.ai] \
#     scripts/generate.sh "<topic>" [lang] [market]
#
# Get a license key at https://paibao.ai/operator
set -euo pipefail

KEY="${PAIBAO_LICENSE_KEY:?set PAIBAO_LICENSE_KEY (get one at https://paibao.ai/operator)}"
API="${PAIBAO_API:-https://console.paibao.ai}"
TOPIC="${1:?usage: generate.sh \"<topic>\" [lang] [market]}"
LANG="${2:-en}"
MARKET="${3:-}"

BODY="$(python3 -c 'import json,sys; print(json.dumps({"topic":sys.argv[1],"languages":[sys.argv[2]],"market":sys.argv[3]}))' "$TOPIC" "$LANG" "$MARKET")"

curl -fsS --max-time 180 -X POST "$API/api/operator/generate" \
  -H "X-License-Key: $KEY" \
  -H "Content-Type: application/json" \
  -d "$BODY"
