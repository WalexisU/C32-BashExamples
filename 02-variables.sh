#!/bin/bash

# pas espaces (,) pour composer
prenom=Emp
echo $prenom

#forcer un int
declare -i age=33

#read only
declare -r CHEMIN=/bin

echo "Nom script:" $0
echo "Nom params:" $#
echo "Param:" $1