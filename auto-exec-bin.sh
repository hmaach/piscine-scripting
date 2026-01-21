#!/bin/bash

BIN_DIR="$HOME/myBins"
SHELL_RC="$HOME/.bashrc"

# Make sure the binary is executable
chmod +x "$BIN_DIR/01exec" 2>/dev/null

# Add directory to PATH if not already there
grep -q 'export PATH="$HOME/myBins:$PATH"' "$SHELL_RC" || \
printf '%s\n' 'export PATH="$HOME/myBins:$PATH"' >> "$SHELL_RC"

