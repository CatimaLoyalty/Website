#!/bin/bash

# Images
mkdir -p assets/screenshot
curl https://raw.githubusercontent.com/CatimaLoyalty/Android/main/app/src/main/ic_launcher-playstore.png --output assets/appicon.png
curl https://raw.githubusercontent.com/CatimaLoyalty/Android/main/fastlane/metadata/android/en-US/images/phoneScreenshots/screenshot-01.png --output assets/screenshot/screenshot-01.png
curl https://raw.githubusercontent.com/CatimaLoyalty/Android/main/fastlane/metadata/android/en-US/images/phoneScreenshots/screenshot-02.png --output assets/screenshot/screenshot-02.png
curl https://raw.githubusercontent.com/CatimaLoyalty/Android/main/fastlane/metadata/android/en-US/images/phoneScreenshots/screenshot-03.png --output assets/screenshot/screenshot-03.png
curl https://raw.githubusercontent.com/CatimaLoyalty/Android/main/fastlane/metadata/android/en-US/images/phoneScreenshots/screenshot-04.png --output assets/screenshot/screenshot-04.png
curl https://raw.githubusercontent.com/CatimaLoyalty/Android/main/fastlane/metadata/android/en-US/images/phoneScreenshots/screenshot-05.png --output assets/screenshot/screenshot-05.png
curl https://raw.githubusercontent.com/CatimaLoyalty/Android/main/fastlane/metadata/android/en-US/images/phoneScreenshots/screenshot-06.png --output assets/screenshot/screenshot-06.png
curl https://raw.githubusercontent.com/CatimaLoyalty/Android/main/fastlane/metadata/android/en-US/images/phoneScreenshots/screenshot-07.png --output assets/screenshot/screenshot-07.png
curl https://raw.githubusercontent.com/CatimaLoyalty/Android/main/fastlane/metadata/android/en-US/images/phoneScreenshots/screenshot-08.png --output assets/screenshot/screenshot-08.png

# Changelog
cat << EOF > _pages/changelog.md
---
layout: page
title: What's New
include_in_header: true
include_in_footer: true
---

EOF
curl https://raw.githubusercontent.com/CatimaLoyalty/Android/main/CHANGELOG.md >> _pages/changelog.md
