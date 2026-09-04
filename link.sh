#!/usr/bin/env bash

set -euo pipefail

DOTFILES="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"

link() {
  local source="$1"
  local target="$2"

  source="$DOTFILES/$source"

  mkdir -p "$(dirname -- "$target")"

  if [[ -e "$target" || -L "$target" ]]; then
    if [[ "$(readlink -f "$target" 2>/dev/null || true)" == "$source" ]]; then
      echo "Already linked: $target"
      return
    fi

    echo "Refusing to overwrite: $target"
    return 1
  fi

  ln -s "$source" "$target"
  echo "Linked: $target -> $source"
}

# Home
link home/.ssh/config "$HOME/.ssh/config"
link home/.bashrc "$HOME/.bashrc"
link home/.gitconfig "$HOME/.gitconfig"
link home/.sqliterc "$HOME/.sqliterc"
link home/.zshrc "$HOME/.zshrc"

# .config
link .config/dunst "$HOME/.config/dunst"
link .config/fontconfig "$HOME/.config/fontconfig"
link .config/hypr "$HOME/.config/hypr"
link .config/kitty "$HOME/.config/kitty"
link .config/nvim "$HOME/.config/nvim"
link .config/rofi "$HOME/.config/rofi"
link .config/waybar "$HOME/.config/waybar"
