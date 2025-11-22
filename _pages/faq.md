---
layout: page
title: FAQ
include_in_header: true
include_in_footer: true
---

# Frequently asked questions

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

Smartwatch support in Catima is still quite limited. Currently only a few smartwatches are supported through [Gadgetbridge](https://gadgetbridge.org/basics/integrations/catima/).

Wear OS smartwatches are not currently supported because Google has made the necessary libraries for it closed source. This will likely need an external app to support it. It is tracked [here](https://github.com/CatimaLoyalty/Android/issues/25).

Please note that you need to enable "Allow other apps to access my data" in Catima Settings under Privacy to allow Gadgetbridge to request access to your cards.

## Updates

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
