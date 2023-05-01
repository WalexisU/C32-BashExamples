#!/bin/bash

echo "Hello" $USER

# exit

# -n pas de saut de ligne
echo -n "Vive"
echo "Linux"

# -e permet d'interpreter les retours de ligne et etc (\n,\t, ...)
echo -e "1\n2\n3"


read -p "Quel ages avez-vous?" age
echo $age "! Vous etes jeune"
