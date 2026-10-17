#!/bin/sh
# Generate a .mcaddon file containing both packs. Run this from the repo root.
# Requires zip to be installed.

BP_DIR=behavior_pack
RP_DIR=resource_pack
OUT_NAME=bedrock_infection.mcaddon

if [ ! -d "$BP_DIR" ] || [ ! -d "$RP_DIR" ]; then
  echo "Error: Ensure both $BP_DIR and $RP_DIR exist in the current directory."
  exit 1
fi

# Create a zip with only the two pack directories at the root
zip -r ${OUT_NAME%.mcaddon}.zip "$BP_DIR" "$RP_DIR"
mv ${OUT_NAME%.mcaddon}.zip "$OUT_NAME"

echo "Created $OUT_NAME. Import it by opening it with Minecraft Bedrock." 
