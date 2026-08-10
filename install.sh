#!/usr/bin/env bash
# Installs personal config into $HOME.
#
# Ona clones this repo to ~/dotfiles and runs this script on every new
# environment, before the workspace's own setup. It is idempotent, so it is
# also safe to run by hand.
set -euo pipefail

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Symlink rather than copy, so edits made through the $HOME path land in this
# repo and can be committed from there.
link() {
    local src="$DOTFILES_DIR/$1"
    local dest="$HOME/$2"

    if [[ ! -e "$src" ]]; then
        echo "skip: $1 is not in this repo"
        return 0
    fi

    mkdir -p "$(dirname "$dest")"

    if [[ -L "$dest" ]] && [[ "$(readlink -f "$dest")" == "$(readlink -f "$src")" ]]; then
        echo "ok:   ~/$2"
        return 0
    fi

    # Never discard an existing real file unless it is byte-identical to ours.
    if [[ -e "$dest" && ! -L "$dest" ]] && ! cmp -s "$src" "$dest"; then
        local backup
        backup="$dest.bak.$(date +%Y%m%d%H%M%S)"
        mv "$dest" "$backup"
        echo "kept: $backup"
    fi

    ln -sfn "$src" "$dest"
    echo "link: ~/$2"
}

link claude/CLAUDE.md .claude/CLAUDE.md

echo "dotfiles: done"
