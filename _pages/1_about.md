---
permalink: /
title: "Welcome to my Homepage!"
excerpt: "About me"
author_profile: true
redirect_from:
  - /cv/
  - /resume/
  - /about/
  - /about.html
---
{% include base_path %}
<script src="{{ base_path }}/assets/js/vendor/jquery/jquery.min.js"></script>
<script src="{{ base_path }}/assets/js/plugins/moment.min.js"></script>

Hi there,

I'm Maxime Baudette, an Energy Terchnology researcher at the [Lawrence Berkeley National Lab (LBNL)](https://eta.lbl.gov/people/Maxime-Baudette) in Berkeley, CA. I'm also a PhD candidate at the [Royal Institute of Technology (KTH)](https:/www.kth.se).

Thanks for reading!

You can find the latest copy of my CV using the links below. It is prepared in both English and French.

<div>
      <a class="btn cv-en-download" role="button" title="Download my CV in English" href="https://github.com/MaximeBaudette/MaximeBaudette.github.io/releases/latest">English</a>
      <a class="btn cv-fr-download" role="button" title="Download my CV in French" href="https://github.com/MaximeBaudette/MaximeBaudette.github.io/releases/latest">French</a>
</div>

<script type="text/javascript">
    $(document).ready(function () {
        GetLatestReleaseInfo();
    });

    function GetLatestReleaseInfo() {
        $.getJSON("https://api.github.com/repos/MaximeBaudette/MaximeBaudette.github.io/releases/latest").done(function (release) {
            var cvEn = release.assets[0];
            var cvFr = release.assets[1];
            $(".cv-en-download").attr("href", cvEn.browser_download_url);
            $(".cv-fr-download").attr("href", cvFr.browser_download_url);
        });
    }
</script>



