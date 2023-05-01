#!/bin/bash

# -e = fichier existe
# -f = cest un fichier?
# -d = cest un dossier?
if test -e $1
then    echo "existe"
fi