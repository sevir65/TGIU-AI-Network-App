#!/data/data/com.termux/files/usr/bin/bash

cd ~/downloads/TGIU-AI-Network-App || exit

NOW=$(date "+%Y-%m-%d %H:%M:%S")

if ! git diff --quiet || ! git diff --cached --quiet; then
  git add .
  git commit -m "Auto-backup LYRA: $NOW"
  git push origin main
  echo "Backup LYRA salvat la $NOW"
  termux-tts-speak "Backup LYRA salvat cu succes"
else
  echo "Nicio modificare de salvat."
  termux-tts-speak "Nicio modificare de salvat"
fi
