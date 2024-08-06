#!/bin/zsh

# Dotfiles directory
DOTFILES_DIR=~/dotfiles

# List of dotfiles to symlink
DOTFILES=(
  .zshrc
)

# Create symlinks
for file in "${DOTFILES[@]}"; do
  ln -s "$DOTFILES_DIR/$file" "$HOME/$file"
done

echo "Dotfiles have been symlinked."

