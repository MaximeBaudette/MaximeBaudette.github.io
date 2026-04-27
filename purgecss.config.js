module.exports = {
  content: ["_site/**/*.html", "_site/**/*.js"],
  css: ["_site/assets/css/*.css"],
  output: "_site/assets/css/",
  skippedContentGlobs: ["_site/assets/**/*.html"],
  safelist: [
    /^(light|dark)-/,
    "show",
    "active",
    "collapsing",
    "collapse",
    "in",
    "open",
    "waves-effect",
    "ripple",
    "animated",
    "fade",
  ],
};
