#!/bin/bash

# Go to your project directory
# Change this to your actual project path
cd "$(dirname "$0")"

# Initialize a new git repo if one doesn't exist
if [ ! -d ".git" ]; then
  git init
fi

# Add your remote origin (customized for your username)
git remote remove origin 2>/dev/null
git remote add origin https://github.com/bradbruno588/AskNova.git

# Stage all files
git add .

# Commit your changes with timestamp
git commit -m "Initial AskNova commit: $(date '+%Y-%m-%d %H:%M:%S')" || echo "Nothing to commit"

# Set the main branch (if not already)
git branch -M main

# Pull latest (in case remote has history, for safety)
git pull --rebase origin main || echo "No remote history to pull"

# Push to GitHub
git push -u origin main