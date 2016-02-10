#!/bin/bash
echo "Adding Android platform";
mkdir platforms
mkdir plugins
cordova platform add android
cordova plugin add cordova-plugin-media
echo "Done";
