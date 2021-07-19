---
layout: page
title: Shared Card
include_in_header: false
---

# Shared Card

The following card was shared with you:

<div id="sharedCardInfo" class="cardStyle">
    <strong id="sharedCardInfoStore"></strong>
    <p><img id="sharedCardInfoBarcode"></p>
    <div id="sharedCardInfoCardID"></div>
    <div id="sharedCardInfoBalance"></div>
    <div id="sharedCardInfoExpiry"></div>
    <div id="sharedCardInfoNote"></div>
</div>

Want to have easy access to this card at any time? Consider installing Catima. It is free, Open Source and contains no ads.

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

<script src="/assets/bwip-js-min.js"></script>
<script>
    var setField = function(fieldName, value) {
        document.getElementById(`sharedCardInfo${fieldName}`).innerText = value;
    }

    if (window.location.hash) {
        var parts = decodeURIComponent(window.location.hash.substring(1)).split("&");

        // Defaults
        var data = {
            "store": null,
            "cardid": null,
            "barcodeid": null,
            "barcodetype": null,
            "balancetype": "",
            "expiry": null
        };

        parts.forEach(function(part) {
            kv = part.split("=", 2);
            console.log(kv);
            key = kv[0];
            value = decodeURIComponent(kv[1].replace(/\+/g, " "));
            console.log(key);
            console.log(value);

            data[key] = value;
        });

        innerHTML = [];
        if (data['store'] != null) {
            setField("Store", data["store"]);
        };
        if (data['barcodetype'] != null) {
            catimaToBwipMap = {
                "AZTEC": "azteccode",
                "CODABAR": "rationalizedCodabar",
                "CODE_39": "code39",
                "CODE_93": "code93",
                "CODE_128": "code128",
                "DATA_MATRIX": "datamatrix",
                "EAN_8": "ean8",
                "EAN_13": "ean13",
                "ITF": "interleaved2of5",
                "MAXICODE": "maxicode",
                "PDF_417": "pdf417",
                "QR_CODE": "qrcode",
                "RSS_14": "databarexpanded",
                "RSS_EXPANDED": "databarexpanded",
                "UPC_A": "upca",
                "UPC_E": "upce"
            }

            let canvas = document.createElement('canvas');
            try {
                bwipjs.toCanvas(canvas, {
                    bcid: catimaToBwipMap[data["barcodetype"]],
                    text: data["barcodeid"] ?? data["cardid"],
                    includetext: false   
                });
                document.getElementById('sharedCardInfoBarcode').src = canvas.toDataURL('image/png');
            } catch (e) {
                // `e` may be a string or Error object
            }
        }

        if (data['cardid'] != null) {
            setField("CardID", data["cardid"]);
        };
        if (data['balance'] != null) {
            setField("Balance", `${data["balance"]} ${data["balancetype"]}`);
        };
        if (data['expiry'] != null) {
            setField("Expiry", new Date(parseInt(data["expiry"])).toLocaleDateString())
        };
        if (data['note'] != null) {
            setField("Note", data["note"]); 
        }
    }
</script>