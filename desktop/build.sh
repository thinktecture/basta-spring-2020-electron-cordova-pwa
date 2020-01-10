#!/bin/bash

rm -rf .tmp
mkdir .tmp
mkdir .tmp/renderer
cp resources/package.json .tmp/
cp resources/*.js .tmp/
cp frontend/dist/basta/*.* .tmp/renderer
cd .tmp
yarn add
npx electron-packager . --electron-version 7.1.8 --platform linux --icon ./../gfx/tt.icns --out ../publish --overwrite true
