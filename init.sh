#!/bin/bash

# Images
curl https://raw.githubusercontent.com/TheLastProject/Catima/master/app/src/main/ic_launcher-playstore.png --output assets/appicon.png
curl https://raw.githubusercontent.com/TheLastProject/Catima/master/fastlane/metadata/android/en-US/images/phoneScreenshots/screenshot-01.png --output assets/screenshot/yourscreenshot.png

# Changelog
curl https://raw.githubusercontent.com/TheLastProject/Catima/master/CHANGELOG.md --output _pages/changelog.md
