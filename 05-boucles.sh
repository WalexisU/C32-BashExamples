#!/bin/bash

for ((i = 0; i < 5; i++))
do
    echo $i
done

# `` = excecution d'une commande et mettre dans une vraiable
liste=`ls`

for fichier in $liste
do
    echo $fichier
done

resultat=o

while [[ $resultat = o ]]
do
    read -p "Choix:" resultat
done
