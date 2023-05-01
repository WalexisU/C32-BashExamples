#!/bin/bash

# note=60

#if test ...
#if [...]
read -p "note:" note 
read -p "Entrez une lettre:" lettre

if [[ $note -lt 60 ]];then 
    echo "Desole... vous echouez"
elif test $note -eq 60;then
    echo "ouf!"
else
    echo "Beau travail"
fi

case $lettre in
    [[:lower:]])
        echo "La lettre est en minuscule"
        ;;
    *)
        echo "Autre"
    ;;
esac

var=a

if [[ $lettre != $var ]];then
    echo "diff de a"
fi

