#!/bin/bash
cwd="$(pwd)"
buildpath="$(lektor project-info --output-path)"

lektor build

cd $buildpath
git add .
echo "Bitte geben Sie die Commit-Message ein:"
read msg
git commit -am "$msg"
git push origin master
read -n 1 -s
cd $cwd
exit
