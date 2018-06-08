#!/bin/bash
git add .
git commit -m 'deploy'
git push origin master
ssh -i .ssh/id_rsa ubuntu@118.24.101.230
cd www/blog/production
git pull
npm install
npm run dev