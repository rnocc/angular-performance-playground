#!/bin/bash

npm i -g @angular/cli rimraf copyfiles lerna
npm run clean
npm run bootstrap
pushd ./packages/client
npm run build
popd
pushd ./packages/server
popd
npm run postbuild