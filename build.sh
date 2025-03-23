#!/bin/sh

set -xe
mkdir data
aseprite --batch --script ./scripts/export.lua

mkdir data/letters
magick data/gothic_lang_mono.bmp -scale 2160x140 data/gothic_lang_mono_upscale.bmp
magick data/gothic_lang_mono_upscale.bmp -crop 80x140 data/letters/%d.bmp

for i in data/letters/*; do
	FILENAME=${i%????}
	potrace $i -a 0 -s -o $FILENAME.svg
done

rm data/letters/*.bmp
./scripts/otb.pe

rm -r data

set +xe

printf "\n\n\n ====== ALL DONE ======\n"
printf " The created files are:\n" 
printf " - gothic_bitmap_mono.otf\n"
printf " - gothic_bitmap_mono.otb\n"
printf "\nUse ./install.sh to install these fonts\n"
printf "Use ./uninstall.sh to uninstall these fonts\n"
