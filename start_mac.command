#!/bin/bash
set -e
cd "$(dirname "$0")"
if [ ! -f .venv/bin/activate ]; then
  echo "Jarvis is not installed yet. Read docs/MAC_SETUP.md from the project root."
  read -r -p "Press Enter to exit..."
  exit 1
fi
source .venv/bin/activate
python jarvis_voice.py
