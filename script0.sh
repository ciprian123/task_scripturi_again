#!/bin/bash


# scriptul necesita 3 argumente la linia de comanda pentru a putea fi rulat
if [ "$#" -ne 3 ]; then
    echo "Numar insuficient de argumente!"
    exit
fi


locatie_director=$1
extensie_veche=$2
extensie_noua=$3


# primul argument trebuie sa fie un director
if [[ ! -d $locatie_director ]]; then
    echo "Primul argument trebuie sa fie director"
    exit
fi

# iteram prin continutul directorului si redenumim
flag=0
for fisier in $locatie_director/*$extensie_veche
do
   echo "Am redenumit: " $fisier
   mv $fisier ${fisier%$extensie_veche}$extensie_noua
   flag=$((flag + 1))
done

# in cazul in care nu redenumim nici un fisier anuntam acest lucru
if [[ $flag -eq 0 ]]; then
    echo "Nu exista fisiere cu extensia: " $extensie_veche " la locatia : " $locatie_director
else
    echo "Am redenumit " $flag " fisiere!"
fi
