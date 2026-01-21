#!/bin/bash

BIN_DIR="$HOME/myBins"
SHELL_RC="$HOME/.bashrc"

if [ ! -d "$BIN_DIR" ]; then
  echo "Directory $BIN_DIR does not exist."
  exit 1
fi

if ! grep -q 'export PATH="$HOME/myBins:$PATH"' "$SHELL_RC"; then
  echo 'export PATH="$HOME/myBins:$PATH"' >> "$SHELL_RC"
  echo "Added $BIN_DIR to PATH in $SHELL_RC"
else
  echo "$BIN_DIR"
fi
