#!/bin/bash
echo "Building release version";
cordova build android --release
cp ./platforms/android/build/outputs/apk/android-release-unsigned.apk ./
jarsigner -verbose -sigalg SHA1withRSA -digestalg SHA1 -keystore avain.keystore android-release-unsigned.apk shnigi
/opt/android-sdk-linux/build-tools/23.0.2/zipalign -v -f 4 android-release-unsigned.apk rockpaperscissors-release.apk
rm android-release-unsigned.apk
echo "Done";
