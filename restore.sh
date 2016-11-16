#!/bin/bash

echo "Entrez un nom de sauvegarde: "
read name
cp "saves/$name/pokecrystal.sav" "src"
cp "saves/$name/pokecrystal.rtc" "src"
