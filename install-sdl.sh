#!/bin/bash

if [ -n "$(which apt-get)" ]; then
    apt-get install -y libsdl2{,-mixer,-image,-ttf}-dev
elif [ -n "$(which yum)" ]; then
    yum install SDL2{,_mixer,_image,_ttf}-devel
elif [ "$(uname)" -eq "Darwin" ]; then
    brew install sdl2{,_image,_ttf,_mixer}
else
    pacman -S mingw-w64-x86_64-gcc mingw-w64-x86_64-SDL2{,_mixer,_image,_ttf}
fi
