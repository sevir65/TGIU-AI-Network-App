#!/data/data/com.termux/files/usr/bin/bash

cd ~/downloads/TGIU-AI-Network-App

NOW=$(date "+%Y-%m-%d %H:%M:%S")
git add .
git commit -m "Auto-backup LYRA: $NOW"
git push origin main
