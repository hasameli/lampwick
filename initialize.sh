#/bin/sh

# Firstrun script to set up archive's repo

# Replace this variable with your git repo's URL

PUSHURL=https://github.com/username/repo

cd ./archive/
git init
git add .
git commit -m "Initializing news archive"
git remote add origin 
git push -u origin master
