#!/bin/bash

# La ligne suivante permet de v�rifier si un mot existe dans le dictionnaire
# Il faut suffixer cet URL avec le mot entr� par l'uasger (ex: word=chat)
#wget -qO - http://dictionary.objectif8.com/exists.php?word=

#1- demander usager un mot
#2- verfifier que le mot existe
#3= afficher ecran true/false

#
read -p "Entrez un mot:" mot

verif=`wget -qO - http://dictionary.objectif8.com/exists.php?word=$mot`

if [[ $verif = 1 ]];then
    echo "Le mot existe"
else
    echo "Le mot n'existe pas"
fi