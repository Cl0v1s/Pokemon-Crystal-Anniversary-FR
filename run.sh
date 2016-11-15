#!/bin/bash

bash clean.sh && bash build.sh
if [ -e "src/pokecrystal.gbc" ]
then 
    wine bgb.exe src/pokecrystal.gbc
fi