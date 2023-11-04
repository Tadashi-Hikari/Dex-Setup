#!/bin/bash
read -p "What is your user.name: " name
read -p "What is your user.email: " email

git config --global user.name "$name"
git config --global user.email "$email"
