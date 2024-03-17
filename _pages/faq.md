---
layout: page
title: FAQ
include_in_header: true
include_in_footer: true
---

# Frequently asked questions

## Money

### What is Catima's business model? How does it make money?

Catima is a hobby project made to give users a way to store loyalty cards and other barcode-based cards without having their private data sold. It is fully offline and doesn't send your data to any server. Please be aware that [Google will make encrypted backups of apps on their servers by default](https://support.google.com/android/answer/2819582).

Making money is not a goal of the Catima project. Giving users a privacy-friendly alternative to other loyalty card apps is.

### Do you accept donations?

Yes. You can [make a donation](/donate) to show your appreciation for the project.

## Updates

### How long does it take for an update to be available?

An APK file for every update is published to [GitHub Releases](https://github.com/CatimaLoyalty/Android/releases) and submitted to Google Play (and automatically detected by IzzyOnDroid and F-Droid). Below is the list of "app stores" sorted by how fast they update.

**Please note:** When switching app source, you will first have to uninstall Catima. To prevent data loss, make sure to use the Import/Export menu to export your data for re-import on the new install.

#### IzzyOnDroid

The fastest option is [IzzyOnDroid](https://apt.izzysoft.de/fdroid/index/apk/me.hackerchick.catima).

IzzyOnDroid scans GitHub Releases once a day and instantly publishes the new version. The delay is less than 24 hours, quite often IzzyOnDroid picks up the Catima update within a few hours of release.

#### F-Droid

Another option is [F-Droid](https://f-droid.org/en/packages/me.hackerchick.catima/).

F-Droid builds Catima from the publicly available source code. An app update tends to be available between 3 and 6 days after release but may take longer.

#### Google Play

Another option is [Google Play](https://play.google.com/store/apps/details?id=me.hackerchick.catima).

Google Play's speed of updating mostly depends on how long Google takes to review the update. Sometimes this is less than 24 hours, sometimes much longer (the current longest delay was 16 days on October 7th, 2022). Catima updates first get published to Open Testing (everyone is free to join this through the [Android App Testing program](https://play.google.com/apps/testing/me.hackerchick.catima)) and then the update gets rolled out slowly (generally about 20% of users per day) to Production. When switching from Open Testing to Production Google has to review the update again, possibly adding extra delay.

On average, Google Play Open Testing tends to be slower than IzzyOnDroid but faster than F-Droid. Google Play Production tends to be roughly as fast as F-Droid most of the time, sometimes faster and sometimes slower.

### I don't like the new version, how do I downgrade?

Every release ever made is available on [GitHub Releases](https://github.com/CatimaLoyalty/Android/releases). Choose the version you want and download the attached .apk file.

Do note that Android does not allow downgrading apps and requires you to uninstall the current version you have installed. To prevent data loss, make sure you export your database before your uninstall.

## Features

### Does Catima support smartwatches?

Smartwatch support in Catima is still quite limited. Currently only a few smartwatches are supported through [Gadgetbridge](https://gadgetbridge.org/basics/integrations/catima/).

Wear OS smartwatches are not currently supported because Google has made the necessary libraries for it closed source. This will likely need an external app to support it. It is tracked [here](https://github.com/CatimaLoyalty/Android/issues/25).

Please note that you need to enable "Allow other apps to access my data" in Catima Settings under Privacy to allow Gadgetbridge to request access to your cards.
