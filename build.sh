#!/bin/bash
#
ROOT_PATH=$PWD
BUILD_PATH="$ROOT_PATH/app/build/outputs/apk/pixelbridge/optimized/"
APP_NAME="pixelbridge"

# Build app
./gradlew assemblePixelbridgeOptimized --info

#sign
java -jar sign.jar $BUILD_PATH/app-pixelbridge-optimized.apk
mv $BUILD_PATH/app-pixelbridge-optimized.apk $ROOT_PATH/$APP_NAME.apk
mv $BUILD_PATH/app-pixelbridge-optimized.s.apk $ROOT_PATH/$APP_NAME-signed.apk

# cleanup
#./gradlew clean
