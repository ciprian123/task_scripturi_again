#!/bin/bash

# verfic daca am numar suficient de argumente
if [[ ! $# -eq 1 ]]; then
    echo "Numar insuficient de argumente!"
    exit
fi


N=$1
# verific sa nu am valori eronate
if [[ $N -lt 0 || $N -gt 16 ]]; then
    echo "N trebuie sa fie intre 0 si 16!"
fi 



for i in $( seq  1 $N);
do
    cd ..
done

echo "Am mers inapoi cu succes " $N " nivele!"
echo "Locatie curenta: " $(pwd)
