#!/usr/bin/bash

cd xf86-video-amdgpu-git && makepkg -si

cd ..

cd xf86-video-intel-git && makepkg -si

cd ..

# make a copy of every pkg in pkg/ dir

mkdir pkg
cp -v */*.pkg.tar.zst pkg/

# clean build dir

rm -rf */src/
rm -rf */pkg/
