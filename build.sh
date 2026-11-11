#!/usr/bin/env bash
# Build the private static preview into ./public/
set -euo pipefail
ROOT="$(cd "$(dirname "$0")" && pwd)"
export PATH="${HOME}/.local/bin:${PATH}"
if ! command -v hugo >/dev/null 2>&1; then
  echo "Hugo is not on PATH. Install the extended binary (tested: v0.169.0) and retry." >&2
  exit 1
fi
hugo -s "$ROOT/site" -d "$ROOT/public" --cleanDestinationDir --minify
echo "Built $ROOT/public"
