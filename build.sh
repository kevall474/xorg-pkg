#!/usr/bin/bash

#_                   _ _ _  _ _____ _  _
#| | _______   ____ _| | | || |___  | || |
#| |/ / _ \ \ / / _` | | | || |_ / /| || |_
#|   <  __/\ V / (_| | | |__   _/ / |__   _|
#|_|\_\___| \_/ \__,_|_|_|  |_|/_/     |_|

cd xf86-video-amdgpu-git && env _compiler=2 makepkg -si && cd ..

cd xf86-video-intel-git && _compiler=2 makepkg -si && cd ..

cd xf86-video-nouveau-git && _compiler=2 makepkg -si && cd ..

cd makedepend-git && _compiler=2 makepkg -si && cd ..

cd xorg-util-macros-git && _compiler=2 makepkg -si && cd ..

# make a copy of every pkg in pkg/ dir

mkdir pkg

cp -v */*.pkg.tar.zst pkg/

# clean build dir

rm -rf */src/
rm -rf */pkg/
