#!/bin/sh
set -xe
cp gothic_bitmap_mono.otb ~/.local/share/fonts
cp gothic_bitmap_mono.otf ~/.local/share/fonts
fc-cache
