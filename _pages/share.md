---
layout: page
title: Shared Card
include_in_header: false
---

# Shared Card

Someone wants to share a card with you. To import this card, you will first need to install the Catima app. It is free, Open Source and contains no ads.

<div>
    {% if site.playstore_link %}
        <a class="playStoreLink" href="{{site.playstore_link}}"><img class="playStore" src="/assets/playstore.png"></a>
    {% endif %}
    {% if site.fdroid_link %}
        <a class="fdroidLink" href="{{site.fdroid_link}}"><img class="fdroid" src="/assets/fdroid.png"></a>
    {% endif %}
    {% if site.appstore_link %}
        <a class="appStoreLink" href="{{site.appstore_link}}"><img class="appStore" src="/assets/appstore.png"></a>
    {% endif %}
</div>

After installing the app, just click the link you were given again and choose “Import into Catima”.