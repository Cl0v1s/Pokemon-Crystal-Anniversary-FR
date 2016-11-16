#!/bin/bash

echo "Entrez un nom de sauvegarde: "
read name
mkdir "saves/$name"
cp "src/pokecrystal.sav" "saves/$name"
cp "src/pokecrystal.rtc" "saves/$name"
