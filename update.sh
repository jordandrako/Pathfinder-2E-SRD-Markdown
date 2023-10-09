#!/usr/bin/env bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

cd "$SCRIPT_DIR"
git fetch upstream
git stash
git pull upstream main
git push origin main
git stash pop
