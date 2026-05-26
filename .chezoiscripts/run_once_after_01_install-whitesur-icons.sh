#!/usr/bin/env bash

set -euo pipefail

log() { echo "  [whitesur] $*"; }
ok() { echo "  [whitesur] ✓ $*"; }
skip() { echo "  [whitesur] · $*"; }

echo ""
echo "══════════════════════════════════════════════"
echo "  Installing WhiteSur Icon Theme"
echo "══════════════════════════════════════════════"

# ═════════════════════════════════════════════════
# Preflight check
# ═════════════════════════════════════════════════

echo ""
echo "-- Preflight --"

INSTALLER="$HOME/.cache/WhiteSur-icon-theme/install.sh"

if [[ ! -f "$INSTALLER" ]]; then
  skip "Installer not found at $INSTALLER — skipping."
  exit 0
fi

# ═════════════════════════════════════════════════
# Install
# ═════════════════════════════════════════════════

echo ""
echo "-- Installing icons --"

log "Running installer..."
"$INSTALLER" -a
ok "WhiteSur icons installed"

# ═════════════════════════════════════════════════
# Update icon cache
# ═════════════════════════════════════════════════

echo ""
echo "-- Icon cache --"

ICON_DIR="$HOME/.local/share/icons/WhiteSur"

if command -v gtk-update-icon-cache &>/dev/null; then
  if [[ -d "$ICON_DIR" ]]; then
    log "Updating GTK icon cache..."
    gtk-update-icon-cache "$ICON_DIR"
    ok "Icon cache updated"
  else
    skip "Icon dir not found: $ICON_DIR"
  fi
else
  skip "gtk-update-icon-cache not available"
fi

echo ""
