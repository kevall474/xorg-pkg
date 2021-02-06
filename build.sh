#!/usr/bin/bash

cd xf86-video-amdgpu-git && makepkg -si

cd ..

cd xf86-video-intel-git && makepkg -si

cd ..

