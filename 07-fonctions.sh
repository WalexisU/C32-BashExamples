#!/bin/bash

#$0 = nom fonction, $1,2,3,4,5, etc = parametre
maFonction() {
    echo "param:" $1
}

maFonction "salut"
maFonction "toi"