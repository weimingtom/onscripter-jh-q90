#!/bin/sh
#cd $(dirname "$0")
cd /mnt/Roms/onscripter-jh-q90
#SDL_VIDEO_FBCON_ROTATION=UD
#/mnt/mmc/ons/ 
SDL_NOMOUSE=1 ./onscripter > a.txt 2>&1
sync
