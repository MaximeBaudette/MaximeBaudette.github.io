---
layout: archive
title: "CV"
permalink: /cv/
author_profile: true
redirect_from:
  - /resume
---

{% include base_path %}
{% include common-js.html %}
<script src="{{ site.url }}/js/moment.min.js"></script>

You can find the latest copy of my CV at [my latest CV](https://github.com/MaximeBaudette/MaximeBaudette.github.io/releases/latest).

<script type="text/javascript">
    $(document).ready(function () {
        GetLatestReleaseInfo();
    });

    function GetLatestReleaseInfo() {
        $.getJSON("https://api.github.com/repos/MaximeBaudette/MaximeBaudette.github.io/releases/latest").done(function (release) {
            var asset = release.assets[0];
            var oneHour = 60 * 60 * 1000;
            var oneDay = 24 * oneHour;
            var dateDiff = new Date() - new Date(asset.updated_at);
            var timeAgo;
            if (dateDiff < oneDay)
            {
                timeAgo = (dateDiff / oneHour).toFixed(1) + " hours ago";
            }
            else
            {
                timeAgo = (dateDiff / oneDay).toFixed(1) + " days ago";
            }
            var releaseInfo = "My CV was updated " + timeAgo + " .";
            $(".cv-download").attr("href", asset.browser_download_url);
            $(".release-info").text(releaseInfo);
            $(".release-info").fadeIn("slow");
        });
    }
</script>

<p class="message">
  My CV is available in both English and French, you can download it by clicking on **CV_en.pdf** / **CV_fr.pdf**, once you have clicked on the link above!
</p>
