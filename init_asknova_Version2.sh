#!/bin/bash

# Go to your project directory
cd path/to/AskNova_Project

# Initialize a new git repo
git init

# Add your remote origin (replace bradbruno588 )
git remote add origin https://github.com/YOUR_USERNAME/asknova.git

# Stage all files
git add .

# Commit your changes
git commit -m "Initial AskNova commit"

# Set the main branch
git branch -M main

# Push to GitHub
git push -u origin main