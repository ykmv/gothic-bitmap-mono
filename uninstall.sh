#!/bin/sh
set -xe
rm  ~/.local/share/fonts/gothic_bitmap_mono.otb
rm  ~/.local/share/fonts/gothic_bitmap_mono.otf
fc-cache
