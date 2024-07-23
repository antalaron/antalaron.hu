#!/bin/sh

cp ~/.bashrc ~/.bashrc.bak
curl -o ~/.bashrc https://antalaron.hu/config/bashrc 2>/dev/null

if command -v git &> /dev/null; then
    git config --global user.name "Antal Áron"
    git config --global user.email "antalaron@antalaron.hu"

    curl -o ~/.gitignore https://antalaron.hu/config/gitignore 2>/dev/null
    git config --global core.excludesfile ~/.gitignore
    git config --global init.defaultBranch master
fi

echo "Done! Please restart your terminal."
