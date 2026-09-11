---
layout: page
title: FAQ
include_in_header: true
include_in_footer: true
---

# Frequently asked questions

## Requirements

### What do I need to run Catima?

Catima has very low system requirements and will run on almost every single Android device, including older devices and devices not having access to the Google Play Store. You just need to be running Android 6 or later with about 10MB of storage space (more if you plan to save images with your cards).

You can download the latest version of Catima by following the link to your prefered app store [from our homepage](/).

If your Android device is very old, you can use one of the versions below. Do note that when using older versions you will miss out on the latest features and these versions will contain unfixed bugs.

- Android 6.0 and up: [Latest release (click the button of your prefered app store)](/)
- Android 5.0 to Android 5.1: [Catima 2.41.6](https://github.com/CatimaLoyalty/Android/releases/tag/v2.41.6)
- Android 4.1 to Android 4.4: [Catima 2.6.1](https://github.com/CatimaLoyalty/Android/releases/tag/v2.6.1)
- Android 4.0.3 to Android 4.1: [Catima 1.4.1](https://github.com/CatimaLoyalty/Android/releases/tag/v1.4.1)

## Data privacy

### Does Catima collect any data?

No. Catima does not collect any data and is designed to work fully offline. See also our [Privacy Policy](/privacy-policy).

### Can I back up and restore my data?

Catima supports both manual backups (through Catima's built-in Import/Export functionality) and automatic backups through Android Auto Backup.

To back up or restore Catima's data manually, click the <kbd>⋮</kbd> (menu) button and choose Import/Export. Here you can export your data into a .zip file and later restore it. The .zip file can optionally be protected with a password.

When Android Auto Backup is enabled (which it is by default on most Android systems) [Google will automatically make encrypted backups of apps on their servers](https://support.google.com/android/answer/2819582). On custom ROMs like LineageOS, CalyxOS, etc., backups are generally handled by [SeedVault](https://calyxinstitute.org/projects/seedvault-encrypted-backup-for-android) instead. However, for reliability reasons, it is recommended to use Catima's built-in Import/Export functionality instead as this functionality is better tested.

## Money

### What is Catima's business model? How does it make money?

Catima is a hobby project made to give users a way to store loyalty cards and other barcode-based cards without having their private data sold. It is fully offline and doesn't send your data to any server.

Making money is not a goal of the Catima project. Giving users a privacy-friendly alternative to other loyalty card apps is.

### Do you accept donations?

Yes. You can [make a donation](/donate) to show your appreciation for the project.

## Features

### How does sharing cards work?

When pressing the "Share" button, Catima will generate a "shareable URL". This URL contains all card data (except images) at the moment of sharing, similar to sharing an image file. No data is ever sent to Catima servers. Because all the data of a shared card is in the URL itself, shared cards *cannot* be revoked, so please be careful before sharing a card.

For those nerdy among us to want to know the details: the data is put in the url "fragment", which is not sent to a webserver by browsers. It is then rendered into an image using client-side Javascript so the server never sees any of the data.

### Does Catima support smartwatches?

Catima supports two smartwatch platforms: Gadgetbridge and Wear OS.

#### Gadgetbridge support

Gadgetbridge is supported since Catima v2.25.0 (released July 9th, 2023).

For Gadgetbridge support, ensure your watch is supported by Gadgetbridge for Catima usage, see [Gadgetbridge's Catima support page](https://gadgetbridge.org/basics/integrations/catima/). Please note that Gadgetbridge replaces the official (closed source) phone app for your smartwatch and may be easy or complex to set up depending on the watch in question. For more information, see the [Gadgetbridge homepage](https://gadgetbridge.org/) or the [Gadgetbridge getting started guide](https://gadgetbridge.org/basics/). Gadgetbridge severely improves your privacy while using your smartwatch, so it is worth considering even if it doesn't support Catima on your smartwatch.

On the Catima side, the "Sync with Gadgetbridge" setting must be enabled for Gadgetbridge support to work. It is enabled by default.

#### Wear OS support

Wear OS is supported since Catima v2.45.0 (released August 12th, 2026).

For Wear OS support, you must install the Wear OS companion app on your Wear OS device and enable "Sync with Wear OS" in Catima.

The easiest way to install Wear OS companion app is through Google Play. However, the Wear OS companion app is also available on [GitHub](https://github.com/CatimaLoyalty/Android/releases) and [F-Droid](https://f-droid.org/en/packages/me.hackerchick.catima/) (look for the releases marked as "Wear OS").

## Updates

### What differences exist between app stores?

Catima comes in two almost fully identical flavours: "FOSS" and "GPlay".

The "FOSS" flavour is the default flavour and available through IzzyOnDroid, F-Droid and on GitHub.

The "GPlay" flavour removes the "donate" button in the About screen, as Google forbids linking to any payment platform not on Google Play. It also adds a "Rate on Google Play" button to the About screen, which would make no sense if you're not getting the app from Google Play.

There are no other differences between the versions. For your security we strongly discourage downloading Catima from any other source than IzzyOnDroid, F-Droid, GitHub or Google Play.

### How long does it take for an update to be available?

An APK file for every update is published to [GitHub Releases](https://github.com/CatimaLoyalty/Android/releases) and submitted to Google Play (and automatically detected by IzzyOnDroid). Below is the list of "app stores" sorted by how fast they update.

**Please note:** When switching app source, you will first have to uninstall Catima. To prevent data loss, make sure to use the Import/Export menu to export your data for re-import on the new install.

#### IzzyOnDroid

The fastest option is [IzzyOnDroid](https://apt.izzysoft.de/fdroid/index/apk/me.hackerchick.catima).

IzzyOnDroid scans GitHub Releases once a day and instantly publishes the new version. The delay is less than 24 hours, quite often IzzyOnDroid picks up the Catima update within a few hours of release.

#### F-Droid

On average, [F-Droid](https://f-droid.org/en/packages/me.hackerchick.catima/) takes 3 to 8 days to update, but may take longer.

The Catima team has no control over the F-Droid build or their update speed. For faster updates, add the IzzyOnDroid repository to your F-Droid client and install from there.

#### Google Play

Another option is [Google Play](https://play.google.com/store/apps/details?id=me.hackerchick.catima).

Google Play's speed of updating mostly depends on how long Google takes to review the update and accept appeals to incorrect denials. Sometimes this is less than 24 hours, sometimes much longer (the current longest delay was 17 days on November 4th, 2025). Catima updates first get published to Open Testing (everyone is free to join this through the [Android App Testing program](https://play.google.com/apps/testing/me.hackerchick.catima)) and then the update gets rolled out slowly (generally about 20% of users per day) to Production. When switching from Open Testing to Production Google has to review the update again, possibly adding extra delay.

### I don't like the new version, how do I downgrade?

Every release ever made is available on [GitHub Releases](https://github.com/CatimaLoyalty/Android/releases). Choose the version you want and download the attached .apk file.

Do note that Android does not allow downgrading apps and requires you to uninstall the current version you have installed. To prevent data loss, make sure you export your database before your uninstall.
