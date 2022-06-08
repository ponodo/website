#!/bin/sh
set -ex
icons="github facebook twitter"
dest=icons
url=https://raw.githubusercontent.com/FortAwesome/Font-Awesome/6.x/svgs/brands
mkdir -p "${dest}"
for icon in $icons; do
  icon="${icon}.svg"
  wget -O "${dest}/${icon}" "${url}/${icon}"
done