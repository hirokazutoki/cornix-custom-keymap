#!/bin/bash

set -e

INPUT="${1:-cornix-keymap.json}"
OUTPUT="${2:-${INPUT%.json}.vil}"

if [ ! -f "$INPUT" ]; then
  echo "Error: $INPUT not found" >&2
  exit 1
fi

jq -c '.' "$INPUT" > "$OUTPUT"

echo "Converted: $INPUT -> $OUTPUT"
exit 0
