#!/bin/bash

if [ -z "$UPSTREAM_REPO" ]; then
  echo "Cloning main Repository"
  git clone https://github.com/Necrophiliaco/axrorakangabot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO"
  git clone $UPSTREAM_REPO /axrorakangabot
fi

cd /axrorakangabot/src  # Navigate to the correct directory

# Ensure requirements.txt exists before running pip
if [ -f requirements.txt ]; then
  pip3 install -U -r requirements.txt
else
  echo "ERROR: requirements.txt not found!"
  exit 1
fi

# Ensure bot.py exists before attempting to start the bot
if [ -f bot.py ]; then
  echo "Starting Bot...."
  python3 bot.py
else
  echo "ERROR: bot.py not found!"
  exit 1
fi
