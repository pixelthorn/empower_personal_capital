#!/bin/bash

python_version="python3.12"

cd "$(dirname "$0")" || exit 1

VIRTUAL_ENV_DIR="myenv"

if [ ! -d $VIRTUAL_ENV_DIR ]; then
    $python_version -m venv "$VIRTUAL_ENV_DIR" || exit 1
fi

# shellcheck source=/dev/null
source "$VIRTUAL_ENV_DIR/bin/activate" || exit 1

# pip install --upgrade pip
pip install -r requirements.txt
# pip list

$python_version "main.py"
