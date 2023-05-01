#1
if test -e $1
then
    if test -f $1
    then
        echo "existe, fichier"
    else
        echo "existe, dossier"
    fi
else
    echo "nonexistant"
fi

#2
heure=`date +%k`

if [[ $heure -ge 7 && $heure -le 12 ]];then
    echo $heure "matin"
elif [[ $heure -ge 12 && $heure -le 18 ]];then
    echo $heure "apres-midi"
elif [[ $heure -ge 18 && $heure -le 23 ]];then
    echo $heure "soir"
else
    echo $heure "nuit"
fi

#3
read -p "Entrez une lettre ou un chiffre:" input

case $input in 
    [[:lower:]])
        echo "miniscule"
        ;;
    [[:upper:]])
        echo "majuscule"
        ;;
    [[:digit:]])
        echo "chiffre"
        ;;
    *)
        echo "autre"
    ;;
esac

#4
liste=`ls`

for fichier in $liste
do
    echo "Le repertoire contient le fichier" $fichier
done

#5
$1=1

while [[ $i -lt 5 ]]
do
    mkdir $i
    echo "Creation repertoire" $i
    i=$(($i+1))
done

#6, 7
foo() {
    echo "--------------"
    echo "--   Menu   --"
    echo "--------------"
    echo "A - contenu repertoire"
    echo "B - Afficher contenu"
    echo "Q = Quitter" 
}

while [[ $choix != Q ]]
do
    foo  
    read -p "Choix:" choix

    choix=${choix^^}

    if [[ $choix = A ]];then
        ls /root
        sleep 1

    elif [[ $choix = B ]];then
        cat /etc/passwd
        sleep 1
    fi
done

#8
read -p "Entrez le nb1:" nb1
read -p "Entrez le nb2:" nb2

resultat=$((nb1+nb2))
echo "Le resultat de l'addition:" $resultat

#9
