#!/bin/bash

#1 = afficher un menu
#2 = mettre le menu ans une fonction
#3 - faire une boucle:
#       -1 offrir 2 choix : quitter (choix q) 
#       -2 appelez ./exercise1.sh (choix d)
#4 - a chaque debut de boucle, afficher le menu


#afficherMenu() {
#   clear
#   echo "------------------"
#    echo "Logiciel 101"
#    echo "------------------"
#}

menu() {
    clear
    echo -e "d-script\nq-quitter" 
}

while [[ $choix != q ]]
do
    menu
    read -p "Choisir:" choix
    
    if [[ $choix = d ]];then
       ./exercice1.sh
       sleep 1
    fi
done

