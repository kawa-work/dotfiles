#!/bin/bash

IGNORE_PATTERN="^\.(git|DS_Store)"

echo "Create dotfile links."
for dotfile in .??*; do
    [[ $dotfile =~ $IGNORE_PATTERN ]] && continue
    ln -snfv "$(pwd)/$dotfile" "$HOME/$dotfile"
    echo "$dotfile"
done
echo "Success"
