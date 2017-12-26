#!/bin/bash
hexo generate
cp -R public/* .deploy/kangxueliang.github.io
cd .deploy/kangxueliang.github.io
git add .
git commit -m “update”
git push origin master
