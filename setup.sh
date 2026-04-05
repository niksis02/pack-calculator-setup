#!/usr/bin/env bash
set -euo pipefail

FE_REPO="https://github.com/niksis02/pack-calculator-fe.git"
BE_REPO="https://github.com/niksis02/pack-calculator-be.git"

clone_or_pull() {
  local repo=$1
  local dir=$2

  if [ -d "$dir/.git" ]; then
    echo "==> Updating $dir..."
    git -C "$dir" pull --ff-only
  else
    echo "==> Cloning $repo into $dir..."
    git clone "$repo" "$dir"
  fi
}

clone_or_pull "$FE_REPO" frontend
clone_or_pull "$BE_REPO" backend
