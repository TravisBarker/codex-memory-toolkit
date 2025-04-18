#!/bin/bash

# Set the base memory folder
MEMORY_DIR=~/codex_memory

# Read and parse manifest.json
CONTEXT_FILES=$(jq -r '.contexts[]' $MEMORY_DIR/manifest.json)

# Print each context file
for file in $CONTEXT_FILES; do
    echo "===== $file ====="
    cat "$MEMORY_DIR/contexts/$file"
    echo -e "\n"
done
