module.exports = {
  content: ["_site/**/*.html", "_site/**/*.js"],
  css: ["_site/assets/css/*.css"],
  output: "_site/assets/css/",
  skippedContentGlobs: ["_site/assets/**/*.html"],
  safelist: [
    // Dynamic theme classes
    /^(light|dark)-/,
    /^fa-/,
    /^ti-/,
    // Bootstrap JS-driven classes
    "show",
    "active",
    "collapsing",
    "collapse",
    "in",
    "open",
    // MDBootstrap
    "waves-effect",
    "ripple",
    // Animation classes
    "animated",
    "fade",
  ],
};
