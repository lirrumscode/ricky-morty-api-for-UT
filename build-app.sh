#!/bin/bash

npm run build

rm -rf ./ubports-app/www/
mkdir -p ./ubports-app/www/
cp -r ./dist/* ./ubports-app/www/

cd ./ubports-app

clickable desktop
