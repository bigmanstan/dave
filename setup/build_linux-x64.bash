#!/bin/bash

cd src/main/js/electron
npm run build
cd -

BUILD_NAME=DAVEApp-linux-x64
BUILD_FOLDER=build/$BUILD_NAME

\cp setup/config/deply_config.js $BUILD_FOLDER/resources/app/config.js
\cp -r src/main/resources src/main/python $BUILD_FOLDER/resources
\cp -r setup/environment.yml $BUILD_FOLDER/resources

cd build
zip -r $BUILD_NAME.zip $BUILD_NAME
cd -