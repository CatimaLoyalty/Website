---
layout: page
title: Shared Card
include_in_header: false
---

# Shared Card

The following card was shared with you:

<div id="sharedCardInfo" class="cardStyle" itemscope itemtype="https://schema.org/ProgramMembership">
    <strong id="sharedCardInfoStore" itemprop="hostingOrganization"></strong>
    <p><canvas id="sharedCardInfoBarcode"></canvas></p>
    <div id="sharedCardInfoCardID" itemprop="membershipNumber"></div>
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
function androidToRGBA (color) {
  var colorArray = [];
  // split android color string into it's R,G,B and A components
  for (var i = 0; i < 4; i++) {
    colorArray.push(color % 256);
    color >>>= 8;
  }
  // remove alpha value from the original array
  // and store it as it"s own variable
  var alpha = colorArray.pop() / 255;
  // return the color in RGBA format
  return `rgba(${colorArray.reverse()},${alpha})`.replace("-", "");
}

function getTextColor (backgroundColor) {
  var rgba = backgroundColor.replace("rgba(", "").replace(")", "");
  var r = rgba.split(",")[0];
  var g = rgba.split(",")[1];
  var b = rgba.split(",")[2];
  // get YIQ ratio
  var yiq = ((r * 299) + (g * 587) + (b * 114)) / 1000;
  // return better contrasting color
  return (yiq >= 128) ? "black" : "white";
}

var setField = function(fieldName, value) {
  document.getElementById(`sharedCardInfo${fieldName}`).innerText = value;
}

var setProperty = function(propertyName, value) {
  document.documentElement.style.setProperty(propertyName, value)
}

if (window.location.hash) {
  var parts = decodeURIComponent(window.location.hash.substring(1)).split("&");

  // Defaults
  var data = {
      "store": null,
      "cardid": null,
      "barcodeid": null,
      "barcodetype": null,
      "balancetype": null,
      "expiry": null,
      "headercolor": null
  };

  parts.forEach(function(part) {
      kv = part.split("=", 2);
      key = kv[0];
      value = decodeURIComponent(kv[1].replace(/\+/g, " "));
      data[key] = value;
  });

  innerHTML = [];
  if (data["store"] != null) {
      setField("Store", data["store"]);
  };
  if (data["barcodetype"] != null) {
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

      try {
          bwipjs.toCanvas(document.getElementById("sharedCardInfoBarcode"), {
              bcid: catimaToBwipMap[data["barcodetype"]],
              text: data["barcodeid"] ?? data["cardid"],
              includetext: false,
              backgroundcolor: "ffffff",
              padding: 2
          });
      } catch (e) {
          // `e` may be a string or Error object
      }
  }

  if (data["cardid"] != null) {
      setField("CardID", data["cardid"]);
  };
  if (data["balance"] != null) {
      setField("Balance", `${data["balance"]} ${data["balancetype"] ?? "points"}`);
  };
  if (data["expiry"] != null) {
      setField("Expiry", new Date(parseInt(data["expiry"])).toLocaleDateString())
  };
  if (data["note"] != null) {
      setField("Note", data["note"]);
  }

  // only run color calculations when values are set
  // otherwise use defaults
  if (data["headercolor"] != null) {
    var accentColor = androidToRGBA(data["headercolor"]);
    var textColor = getTextColor(accentColor);
  } else {
    var accentColor = "#235";
    var textColor = "#FFF"
  }

  setProperty("--card-accent-color", accentColor)
  setProperty("--card-text-color", textColor)

}

</script>
