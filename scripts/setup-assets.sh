#!/usr/bin/env bash
# Copies third-party assets from node_modules and downloads the rest.
# Run after `npm ci` or `npm install`. Used both locally and in CI.
set -euo pipefail

# Font Awesome 6
mkdir -p _sass/font-awesome assets/webfonts
cp -r node_modules/@fortawesome/fontawesome-free/scss/. _sass/font-awesome/
cp node_modules/@fortawesome/fontawesome-free/webfonts/fa-brands-400.woff2  assets/webfonts/
cp node_modules/@fortawesome/fontawesome-free/webfonts/fa-brands-400.ttf    assets/webfonts/
cp node_modules/@fortawesome/fontawesome-free/webfonts/fa-regular-400.woff2 assets/webfonts/
cp node_modules/@fortawesome/fontawesome-free/webfonts/fa-regular-400.ttf   assets/webfonts/
cp node_modules/@fortawesome/fontawesome-free/webfonts/fa-solid-900.woff2   assets/webfonts/
cp node_modules/@fortawesome/fontawesome-free/webfonts/fa-solid-900.ttf     assets/webfonts/

# Tabler Icons
mkdir -p _sass/tabler-icons assets/fonts
cp node_modules/@tabler/icons-webfont/dist/tabler-icons.scss          _sass/tabler-icons/
cp node_modules/@tabler/icons-webfont/dist/tabler-icons-filled.scss   _sass/tabler-icons/
cp node_modules/@tabler/icons-webfont/dist/tabler-icons-outline.scss  _sass/tabler-icons/
cp node_modules/@tabler/icons-webfont/dist/fonts/tabler-icons.woff2         assets/fonts/
cp node_modules/@tabler/icons-webfont/dist/fonts/tabler-icons.woff          assets/fonts/
cp node_modules/@tabler/icons-webfont/dist/fonts/tabler-icons.ttf           assets/fonts/
cp node_modules/@tabler/icons-webfont/dist/fonts/tabler-icons-filled.woff2  assets/fonts/
cp node_modules/@tabler/icons-webfont/dist/fonts/tabler-icons-filled.woff   assets/fonts/
cp node_modules/@tabler/icons-webfont/dist/fonts/tabler-icons-filled.ttf    assets/fonts/
cp node_modules/@tabler/icons-webfont/dist/fonts/tabler-icons-outline.woff2 assets/fonts/
cp node_modules/@tabler/icons-webfont/dist/fonts/tabler-icons-outline.woff  assets/fonts/
cp node_modules/@tabler/icons-webfont/dist/fonts/tabler-icons-outline.ttf   assets/fonts/

# Bootstrap
cp node_modules/bootstrap/dist/css/bootstrap.min.css      assets/css/
cp node_modules/bootstrap/dist/js/bootstrap.bundle.min.js assets/js/

# Academicons
cp node_modules/academicons/css/academicons.min.css assets/css/
cp node_modules/academicons/fonts/academicons.eot   assets/fonts/
cp node_modules/academicons/fonts/academicons.svg   assets/fonts/
cp node_modules/academicons/fonts/academicons.ttf   assets/fonts/
cp node_modules/academicons/fonts/academicons.woff  assets/fonts/

# Ninja Keys
mkdir -p assets/js/search
cp node_modules/@deepdub/ninja-keys/dist/ninja-keys.js assets/js/search/ninja-keys.min.js

# Bootstrap TOC v1.0.1
curl -sfL "https://cdn.jsdelivr.net/gh/afeld/bootstrap-toc@v1.0.1/dist/bootstrap-toc.min.css" -o assets/css/bootstrap-toc.min.css
curl -sfL "https://cdn.jsdelivr.net/gh/afeld/bootstrap-toc@v1.0.1/dist/bootstrap-toc.min.js"  -o assets/js/bootstrap-toc.min.js

# Scholar Icons v1.0.2
curl -sfL "https://cdn.jsdelivr.net/gh/louisfacun/scholar-icons@1.0.2/css/scholar-icons.css" -o assets/css/scholar-icons.css

# Jekyll Pygments Themes
curl -sfL "https://raw.githubusercontent.com/jwarby/jekyll-pygments-themes/master/github.css" -o assets/css/jekyll-pygments-themes-github.css
curl -sfL "https://raw.githubusercontent.com/jwarby/jekyll-pygments-themes/master/native.css" -o assets/css/jekyll-pygments-themes-native.css
