#!/usr/bin/env bash
#
# Symlink the configs from this repo into place.
# Existing files/dirs are backed up with a timestamp suffix before linking.
#
set -euo pipefail

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
CONFIG_DIR="$HOME/.config"
STAMP="$(date +%Y%m%d_%H%M%S)"

# repo_path : target_path
LINKS=(
  "zsh/.zshrc:$HOME/.zshrc"
  "ghostty:$CONFIG_DIR/ghostty"
  "nvim:$CONFIG_DIR/nvim"
  "niri:$CONFIG_DIR/niri"
  "noctalia:$CONFIG_DIR/noctalia"
  "fastfetch:$CONFIG_DIR/fastfetch"
  "fuzzel:$CONFIG_DIR/fuzzel"
)

link() {
  local src="$DOTFILES_DIR/$1"
  local dst="$2"

  if [[ -L "$dst" && "$(readlink -f "$dst")" == "$(readlink -f "$src")" ]]; then
    echo "  ✓ $dst (already linked)"
    return
  fi

  if [[ -e "$dst" || -L "$dst" ]]; then
    local backup="${dst}.bak-${STAMP}"
    echo "  ↻ backing up $dst -> $backup"
    mv "$dst" "$backup"
  fi

  mkdir -p "$(dirname "$dst")"
  ln -s "$src" "$dst"
  echo "  ✓ $dst -> $src"
}

echo "Linking dotfiles from $DOTFILES_DIR"
for entry in "${LINKS[@]}"; do
  link "${entry%%:*}" "${entry#*:}"
done

echo
echo "Done. Restart your shell or re-open your apps to pick up the configs."
